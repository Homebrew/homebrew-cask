cask 'towerim-tower' do
  version '0.6.0'
  sha256 'fcde1f98c5be96c19170e3c16442257a5396787bffea7c7b873d11723cef6b3e'

  # towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac was verified as official when first introduced to the cask
  url "https://towerfiles.oss-cn-hangzhou.aliyuncs.com/electron/mac/Tower-#{version}.dmg"
  name 'Tower'
  homepage 'https://tower.im/'

  app 'Tower.app'
end
