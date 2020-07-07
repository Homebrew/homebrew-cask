cask 'wormhole' do
  version '1.2.3'
  sha256 'd7552ce0a01acd008ac0015e7d3e508e1798933dbc00d2fe8dea8a4bc405844d'

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
