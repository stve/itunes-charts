module ITunesCharts
  class ChartItem
    attr_accessor :id, :name, :url, :image, :parent

    def initialize(id, name, url, image=nil, parent=nil)
      self.id = id
      self.name = name
      self.url = url
      self.image = image
      self.parent = parent
    end
  end
end