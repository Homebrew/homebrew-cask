cask 'ximalaya' do
  version '1.2.14_1583728020'
  sha256 'b09b90d5eadc0bff0e60ac1a035de4a9c0d58e006b1cf20d87c7118773d3d5ee'

  # s1.xmcdn.com was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://www.ximalaya.com/down/lite?client=mac'
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
