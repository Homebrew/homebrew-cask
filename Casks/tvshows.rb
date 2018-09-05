cask 'tvshows' do
  version '2.1r2,631'
  sha256 '91217b2801fef3b08c60201f8636a5a4408f94fef984f1b4afdbcd798d2e3333'

  url "http://tvshowsapp.com/TVShows-#{version.after_comma}.zip"
  appcast 'http://tvshowsapp.com/tvshows.xml'
  name 'TVShows'
  homepage 'http://tvshowsapp.com/'

  prefpane 'TVShows.prefPane'

  zap trash: '~/Library/Application Support/TVShows 2'
end
