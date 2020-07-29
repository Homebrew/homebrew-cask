cask 'wormhole' do
  version '1.2.0'
  sha256 '8881ad2c92df49deb2ead86925bdf0e410e2129ab2ebcad26bfc8d2b419e319a'

  # files.octopusgame.com was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
