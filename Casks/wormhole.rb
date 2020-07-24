cask 'wormhole' do
  version '1.2.5'
  sha256 '99603eb2db7f2d75a727fd4a1702c6df504fcc494daceafa2b7c31be2b6caf47'

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url 'https://files.octopusgame.com/os/WormholeInstaller.dmg'
  appcast 'https://er.run/release'
  name 'Wormhole'
  homepage 'https://er.run/'

  app 'Wormhole.app'

  zap trash: '~/Library/Saved Application State/er.Wormhole.savedState'
end
