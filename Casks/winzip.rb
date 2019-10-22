cask 'winzip' do
  version '7.0.4564'
  sha256 'b1d132bf27070ae810409f6b683fe103e63c40530a263ef7f11a513d2f57decd'

  url "https://download.winzip.com/winzipmacedition#{version.major}.dmg"
  name 'WinZip'
  homepage 'https://www.winzip.com/mac/en/winzip.html'

  app 'WinZip.app'
end
