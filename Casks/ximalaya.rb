cask 'ximalaya' do
  version '1.2.12'
  sha256 '63754b5dc5f02f50062ddbbc4cec2fb603338688956ef18a3b4f0bb672312dc8'

  # s1.xmcdn.com was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
