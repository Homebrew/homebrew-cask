cask 'veusz' do
  version '1.23.1'
  sha256 '67cada3e84e8a4f4629bb70ffe2bcbb5dc3836fc91e862054ffda98e91759bb5'

  url "http://download.gna.org/veusz/Binaries-AppleOSX/veusz-#{version}-AppleOSX.dmg"
  name 'Veusz'
  homepage 'http://home.gna.org/veusz/'

  app 'Veusz.app'
end
