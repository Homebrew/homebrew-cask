cask 'winzip' do
  version '6.2'
  sha256 'd275b46c935b3a45b9d3b961e1f49259da051d3549b0e775c9afb3bbcf08ad1b'

  url "http://download.winzip.com/winzipmacedition#{version.no_dots}.dmg"
  name 'WinZip'
  homepage 'http://www.winzip.com/mac/en/winzip.html'

  app 'WinZip.app'
end
