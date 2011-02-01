iTunesCharts
============

iTunesCharts is a simple library for accessing iTunes charts from apple.com.

Installation
------------

    gem install itunes-charts

Usage
-----

The gem makes available several class methods to obtain chart data:

    ITunesCharts.albums
    ITunesCharts.songs
    ITunesCharts.movies

In addition to the above, the following class methods are also available:

* tv_shows
* movie_rentals
* free_apps
* paid_apps
* music_videos.

Each method returns an array of ChartItem classes containing the ITMS id, name, image url, and item url.  For songs and albums, iTunesCharts will also return a parent ChartItem containing the Artist's information:

    albums = ITunesCharts.albums
    albums.first.id           => '123456789'
    albums.first.name         => 'Untrue'
    albums.first.url          => 'http://itunes.apple.com/.....'
    albums.first.parent.name  => 'Burial'

License
-------

Copyright (c) 2011 Steve Agalloco

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE


iTunes is a registered trademark of Apple Inc.