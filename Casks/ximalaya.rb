cask 'ximalaya' do
  version '1.2.18_1592472266'
  sha256 'af66f1352970bc9c3782f25a83148d34241d7aab695e0a26450a1fa2ae2cb628'

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/last/download/Ximalaya-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac'
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
