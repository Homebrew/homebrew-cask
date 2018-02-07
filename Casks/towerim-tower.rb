cask 'towerim-tower' do
  version '0.6.1'
  sha256 'ac1bcc7375d95392c0c3eebec58fa8910dc5dadde6cbf07d779c6d2c7e95a9a5'

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url "https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-#{version}.dmg"
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
