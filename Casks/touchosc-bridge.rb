cask 'touchosc-bridge' do
  version '1.5.0'
  sha256 'a5a4b5d78733b682d61952959a96fadc74019158166f74d5dfac65e2f76b59fa'

  url "https://hexler.net/pub/touchosc/touchosc-bridge-#{version}-macos.zip" 
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Bridge'
  homepage 'https://hexler.net/software/touchosc'

  app 'TouchOSC Bridge.app'
end
