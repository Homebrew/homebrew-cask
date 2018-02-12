cask 'towerim-tower' do
  version '0.6.2'
  sha256 '89f030324e1372199b1017267cd9e4cc83b3c385fa24d7451dde65378b58b9d6'

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url "https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-#{version}.dmg"
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
