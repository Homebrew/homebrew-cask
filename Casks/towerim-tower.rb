cask 'towerim-tower' do
  version '0.6.4'
  sha256 'b776b2d71ce0b2ccdc6093979b80239adc387177765381276ffc160a7ebbe863'

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url "https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-#{version}.dmg"
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
