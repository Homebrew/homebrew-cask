cask 'touchosc-bridge' do
  version '1.5.0'
  sha256 '53ce1e920e05b844c3fa2bb1e891fec2b8de9e4917ec0fa01feecfcb772cd767'

  url "https://hexler.net/pub/touchosc/touchosc-bridge-#{version}-macos.zip"
  appcast 'https://hexler.net/software/touchosc'
  name 'TouchOSC Bridge'
  homepage 'https://hexler.net/software/touchosc'

  app 'TouchOSC Bridge.app'
end
