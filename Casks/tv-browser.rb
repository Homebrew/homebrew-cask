cask 'tv-browser' do
  version '4.0.1'
  sha256 '0f881a81da4a10ee29622e1667df07b9445559746a900a1ac24000f6da9f1e0a'

  # sourceforge.net/tvbrowser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  appcast 'https://sourceforge.net/projects/tvbrowser/rss',
          checkpoint: '9ea7b46492ef993bef0f498ef62fcb8255c10ab0220fff228ca2d04e8017720e'
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'

  app 'TV-Browser.app'
end
