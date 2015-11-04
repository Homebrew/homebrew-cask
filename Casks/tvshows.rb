cask :v1 => 'tvshows' do
  version :latest
  sha256 :no_check

  url 'http://tvshowsapp.com/TVShows.zip'
  name 'TVShows'
  appcast 'http://tvshowsapp.com/tvshows.xml',
          :sha256 => '8e1e0a10dafa1f5ae362f9e8a006818d08c9f6349f47d7ba900ad8dcaef3c108'
  homepage 'http://tvshowsapp.com/'
  license :gpl

  prefpane 'TVShows.prefPane'
end
