cask :v1 => 'veusz' do
  version '1.22'
  sha256 'bfcd3a93a4177deeee10089378123039afb0a9114a996e5b9b3b93388a23f3c2'

  url 'http://download.gna.org/veusz/Binaries-AppleOSX/veusz-1.22-AppleOSX.dmg'
  homepage 'http://home.gna.org/veusz/'
  license :gpl

  app 'Veusz.app'
end
