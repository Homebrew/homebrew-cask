class Tvshows < Cask
  version :latest
  sha256 :no_check

  url 'http://tvshowsapp.com/TVShows.zip'
  homepage 'http://tvshowsapp.com/'
  license :unknown

  prefpane 'TvShows.prefpane'
end
