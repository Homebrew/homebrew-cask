cask 'winzip' do
  version '7.0.4521'
  sha256 '30f8a6cbaec2df68cbd39c992f0479d9d61f9a8fc6bffaf2e6f67531c9bbe85b'

  url "https://download.winzip.com/winzipmacedition#{version.major}.dmg"
  name 'WinZip'
  homepage 'https://www.winzip.com/mac/en/winzip.html'

  app 'WinZip.app'
end
