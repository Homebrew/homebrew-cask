cask 'ximalaya' do
  version '1.2.7'
  sha256 '81badac86c142131bf22fb658ede901f68a17c6d8520a122688426570f16800b'

  # s1.xmcdn.com was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
