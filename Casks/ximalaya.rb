cask 'ximalaya' do
  version '1.2.16_1590136687'
  sha256 '7405d98fb2e106fffa821b985eb168f71dbeb9f7f3ebd7b4a9af60d07db9e2df'

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac'
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
