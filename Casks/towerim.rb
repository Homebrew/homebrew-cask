cask 'towerim' do
  version :latest
  sha256 :no_check

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url 'https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-latest.zip'
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
