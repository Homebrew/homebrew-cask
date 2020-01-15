cask 'ximalaya' do
  version '1.2.10'
  sha256 '60ff28e89127e62898c1798eae00c0089741e5498a4079d24ab6e16d14457983'

  # s1.xmcdn.com was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
