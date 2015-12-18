cask 'touchosc-bridge' do
  version '1.3.0'
  sha256 'cf6ae2a29e16a22e347b76fb02d2a524d143b958b9db1ea604a5ad49f9c55567'

  url "http://hexler.net/pub/touchosc/touchosc-bridge-#{version}-osx.zip"
  name 'TouchOSC Bridge'
  homepage 'http://hexler.net/software/touchosc'
  license :gratis

  app 'TouchOSC Bridge.app'
end
