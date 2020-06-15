cask 'ximalaya' do
  version '1.2.18_1592207903'
  sha256 'eef0c0c9162a2d6f1077182b0b23c41b045dc4746223f8be34e31b5de083fb87'

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac'
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
