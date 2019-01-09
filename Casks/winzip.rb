cask 'winzip' do
  version '6.5'
  sha256 '5c9a67f3e9fe0a766fb428c0e2ac4b5132a0406bf858b133c3ca706df2cf61e4'

  url "https://download.winzip.com/winzipmacedition#{version.no_dots}.dmg"
  name 'WinZip'
  homepage 'https://www.winzip.com/mac/en/winzip.html'

  app 'WinZip.app'
end
