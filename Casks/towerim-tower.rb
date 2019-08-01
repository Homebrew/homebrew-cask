cask 'towerim-tower' do
  version '0.6.5'
  sha256 'd4a03befbfb2edc4d218f9c3d90a8c58c823db3ffcadb63d8d7566b1f3cbe7db'

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url "https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-#{version}.dmg"
  appcast 'https://tower.im/downloads'
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
