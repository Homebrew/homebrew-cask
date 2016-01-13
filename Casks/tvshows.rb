cask 'tvshows' do
  version :latest
  sha256 :no_check

  url 'http://tvshowsapp.com/TVShows.zip'
  appcast 'http://tvshowsapp.com/tvshows.xml',
          :checkpoint => 'fe41e5a5084f9565a0697f49f4cc0bccd548bd52d1c5e6d3b350a394bc8f3465'
  name 'TVShows'
  homepage 'http://tvshowsapp.com/'
  license :gpl

  prefpane 'TVShows.prefPane'

  zap :delete => '~/Library/Application Support/TVShows 2'
end
