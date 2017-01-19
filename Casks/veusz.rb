cask 'veusz' do
  version '1.25.1'
  sha256 '38d4144babf3a07845b018af610cdf4b21a951a9b7c200c904509dbbe1d2b7a7'

  url "http://download.gna.org/veusz/Binaries-AppleOSX/veusz-#{version}-AppleOSX.dmg"
  name 'Veusz'
  homepage 'http://home.gna.org/veusz/'

  app 'Veusz.app'
end
