cask 'wormhole' do
  version '1.2.1'
  sha256 '22bf03f9daf95d2fd4c9e823127c653b1daf4411b7df189743ce44cd658ba858'

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
