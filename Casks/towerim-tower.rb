cask 'towerim-tower' do
  version '0.6.3'
  sha256 '666e58cc2ba8dfae1147f92b34ab59826b4b59d9b4fc3e3c3d4899d94966db02'

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url "https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-#{version}.dmg"
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
