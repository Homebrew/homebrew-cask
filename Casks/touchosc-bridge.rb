cask 'touchosc-bridge' do
  version '1.4.0.1'
  sha256 '7911ad9284aafb1ddd337af333d445de7ae57df5ca9b134bdf6881139a8795f4'

  url "http://hexler.net/pub/touchosc/touchosc-bridge-#{version}-osx.zip"
  name 'TouchOSC Bridge'
  homepage 'https://hexler.net/software/touchosc'

  app 'TouchOSC Bridge.app'
end
