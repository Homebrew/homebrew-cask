cask 'wormhole' do
  version '1.2.6'
  sha256 'f9c35b78fd89d75df63b3e9a045faf7f260a9e27d1b3b2378870c6d5e6db6c0e'

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
