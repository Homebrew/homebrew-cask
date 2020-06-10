cask 'wormhole' do
  version '1.1.9'
  sha256 'dc7a2e4b737703be2d3c700024d8641034902d9f180f6f18c922365cb20e61e2'

  # files.octopusgame.com was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
