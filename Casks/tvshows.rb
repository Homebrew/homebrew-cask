cask :v1 => 'tvshows' do
  version :latest
  sha256 :no_check

  url 'http://tvshowsapp.com/TVShows.zip'
  homepage 'http://tvshowsapp.com/'
  license :unknown    # todo: improve this machine-generated value

  prefpane 'TvShows.prefpane'
end
