cask 'tvshows' do
  version '2.1r2,631'
  sha256 '91217b2801fef3b08c60201f8636a5a4408f94fef984f1b4afdbcd798d2e3333'

  url "http://tvshowsapp.com/TVShows-#{version.after_comma}.zip"
  appcast 'http://tvshowsapp.com/tvshows.xml',
          checkpoint: 'fe41e5a5084f9565a0697f49f4cc0bccd548bd52d1c5e6d3b350a394bc8f3465'
  name 'TVShows'
  homepage 'http://tvshowsapp.com/'
  license :gpl

  prefpane 'TVShows.prefPane'

  zap delete: '~/Library/Application Support/TVShows 2'
end
