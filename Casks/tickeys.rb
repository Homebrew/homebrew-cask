cask 'tickeys' do
  version '0.5.0'
  sha256 '55e4550ced3f1bed413e15229e813443019f335f546b1edd41418744eee8e325'

  # github.com/yingDev/Tickeys was verified as official when first introduced to the cask
  url "https://github.com/yingDev/Tickeys/releases/download/#{version}/Tickeys-#{version}-yosemite.dmg"
  appcast 'https://github.com/yingDev/Tickeys/releases.atom',
          checkpoint: 'f117f9e2ff4e81efc166189e65f61d9fc89f4cb010fff7aa0cbf7859cf63174b'
  name 'Tickeys'
  homepage 'http://www.yingdev.com/projects/tickeys'

  app 'Tickeys.app'
end
