cask 'tv-browser' do
  version '4.2'
  sha256 '130db943301cf1548ae227c5e5f4f8cdf3f4b7591589deb267241e503c323c19'

  # sourceforge.net/tvbrowser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  appcast 'https://sourceforge.net/projects/tvbrowser/rss'
  name 'TV-Browser'
  homepage 'https://www.tvbrowser.org/'

  app 'TV-Browser.app'
end
