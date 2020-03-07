cask 'ximalaya' do
  version '1.2.14'
  sha256 '48e431e7579fe51302861a42f5e35af3c5f3dbc899199ddb80da7f71c036e34f'

  # s1.xmcdn.com was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
