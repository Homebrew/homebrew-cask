cask 'tv-browser' do
  version '3.4.4'
  sha256 '53128cbebb2432ca254893453ea4f13fb16abdaf74d7d66355588d523162a086'

  # sourceforge.net/tvbrowser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  appcast 'https://sourceforge.net/projects/tvbrowser/rss',
          checkpoint: '6c72cc25756e2a0d117c74692acb9515fc1a59933f469424d1409b36eee5449b'
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'

  app 'TV-Browser.app'
end
