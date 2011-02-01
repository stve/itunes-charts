require File.expand_path('../spec_helper', __FILE__)

describe ITunesCharts do

  use_vcr_cassette :record => :new_episodes, :match_requests_on => [:uri, :method]

  describe "#charts" do
    it "should return an array of available charts" do
      charts = ITunesCharts.charts
      charts.first.should == 'albums'
    end
  end

  describe "#albums" do
    it "should return an array of ids" do
      albums = ITunesCharts.albums
      albums.size.should > 0
      albums.first.should be_kind_of(ITunesCharts::ChartItem)
      albums.first.name.should == 'Mission Bell'
      albums.first.parent.should_not be_nil
      albums.first.parent.name.should == 'Amos Lee'
    end
  end

  describe "#songs" do
    it "should return an array of ids" do
      ITunesCharts.songs.size.should > 0
    end
  end

  describe "#tv_shows" do
    it "should return an array of ids" do
      ITunesCharts.tv_shows.size.should > 0
    end
  end

  describe "#tv_shows" do
    it "should return an array of ids" do
      ITunesCharts.tv_shows.size.should > 0
    end
  end

  describe "#movie_rentals" do
    it "should return an array of ids" do
      ITunesCharts.movie_rentals.size.should > 0
    end
  end

  describe "#free_apps" do
    it "should return an array of ids" do
      ITunesCharts.free_apps.size.should > 0
    end
  end

  describe "#paid_apps" do
    it "should return an array of ids" do
      ITunesCharts.paid_apps.size.should > 0
    end
  end

  describe "#music_videos" do
    it "should return an array of ids" do
      ITunesCharts.music_videos.size.should > 0
    end
  end

end