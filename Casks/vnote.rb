cask 'vnote' do
  version '1.15'
  sha256 'eb64ee54426fb5525c077e4538f74aac20fc2108a39937aeee700835dfc95825'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote-#{version}-x64.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '79b2d2df441140b7b190c96e29121385b995f9663e537de5d84bd161fd03652f'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
