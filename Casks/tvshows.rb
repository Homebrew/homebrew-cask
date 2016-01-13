cask 'tvshows' do
  version :latest
  sha256 :no_check

  url 'http://tvshowsapp.com/TVShows.zip'
  appcast 'http://tvshowsapp.com/tvshows.xml',
          :sha256 => 'f012d9d8c7ddb79d4c7835928d537dccba77a4146f8bfc3da14914ff90347fd3'
  name 'TVShows'
  homepage 'http://tvshowsapp.com/'
  license :gpl

  prefpane 'TVShows.prefPane'

  zap :delete => '~/Library/Application Support/TVShows 2'
end
