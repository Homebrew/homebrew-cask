cask 'tv-browser' do
  version '3.4.4'
  sha256 '53128cbebb2432ca254893453ea4f13fb16abdaf74d7d66355588d523162a086'

  # sourceforge.net/tvbrowser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  appcast 'https://sourceforge.net/projects/tvbrowser/rss',
          checkpoint: 'b9f535f621475c9bc83836e269be9be5ec8dd375a33d6ebbd9bd76928aa35cb4'
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'

  app 'TV-Browser.app'
end
