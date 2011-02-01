require 'nokogiri'
require 'faraday'
require 'itunes_charts/chart_item'

module ITunesCharts
  extend self

  def charts
    %w(albums songs tv-shows movies movie-rentals free-apps paid-apps music-videos)
  end

  def method_missing(name, *args)
    hyphened_name = name.to_s.gsub('_','-')
    if charts.include?(hyphened_name)
      request(hyphened_name)
    else
      super(name, *args)
    end
  end

  private

    def request(path)
      response = Faraday.get("http://www.apple.com/itunes/charts/#{path}/")
      doc = Nokogiri::HTML(response.body)
      doc.css("div#grid ul li").map do |list_item|

        item_link = list_item.at('a')['href']
        item_uri = URI.parse(item_link)
        item_id = item_uri.path.split('/').last.gsub(/\D/,'')
        item_image = list_item.at('img')['src'] rescue nil
        item_name = list_item.at('h3 a').content rescue nil

        item = ChartItem.new(item_id, item_name, item_link, item_image)
        item.parent = identify_parent(list_item)

        item
      end
    end

    def identify_parent(list_item)
      begin
        parent_link = list_item.at('h4 a')['href']
        parent_uri = URI.parse(parent_link)
        parent_id = parent_uri.path.split('/').last.gsub(/\D/,'')
        parent_name =  list_item.at('h4 a').content
        ChartItem.new(parent_id, parent_name, parent_link)
      rescue
        nil
      end
    end
end
