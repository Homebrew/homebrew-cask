cask 'veusz' do
  version '1.25.1'
  sha256 '38d4144babf3a07845b018af610cdf4b21a951a9b7c200c904509dbbe1d2b7a7'

  url "http://download.gna.org/veusz/Binaries-AppleOSX/veusz-#{version}-AppleOSX.dmg"
  appcast 'http://download.gna.org/veusz/Binaries-AppleOSX/',
          checkpoint: '7dcefe5737e3e8cbd0134289588e301755e351bc8db898e543c762ab8e01c972'
  name 'Veusz'
  homepage 'http://home.gna.org/veusz/'

  app 'Veusz.app'
end
