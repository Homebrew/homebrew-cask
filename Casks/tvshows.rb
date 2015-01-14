cask :v1 => 'tvshows' do
  version :latest
  sha256 :no_check

  url 'http://tvshowsapp.com/TVShows.zip'
  homepage 'http://tvshowsapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'TvShows.prefpane'
end
