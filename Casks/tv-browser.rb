cask 'tv-browser' do
  version '4'
  sha256 '814899388669d5d0501dc35e4cf6d47a3c5393c5a1a02bcaecce49ab02692ddb'

  # sourceforge.net/tvbrowser was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tvbrowser/tvbrowser_#{version}_macjava.dmg"
  appcast 'https://sourceforge.net/projects/tvbrowser/rss',
          checkpoint: 'a802a00e4357b4e6f392434073843a9b12308f299420d2ddefd72c07d702f1d3'
  name 'TV-Browser'
  homepage 'http://www.tvbrowser.org/'

  app 'TV-Browser.app'
end
