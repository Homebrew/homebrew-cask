cask 'wormhole' do
  version '1.2.4'
  sha256 'aa7f3744839dbda232f26e448f964c533e8183885653dd45fb3cf2b86d0ec6fe'

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
