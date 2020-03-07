cask 'thenewplayerfree' do
  version '1.5.13'
  sha256 :no_check

  url "https://github.com/sudormroot/TheNewPlayer_builds/raw/master/releases/macos/thenewplayerfree.macos.v#{version}/thenewplayerfree.tgz"
  name 'TheNewPlayerFree'
  homepage 'https://github.com/sudormroot/TheNewPlayer_builds'

  app 'TheNewPlayerFree.app'
end
