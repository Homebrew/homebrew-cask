cask 'wormhole' do
  version :latest
  sha256 :no_check

  # files.octopusgame.com was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'
end
