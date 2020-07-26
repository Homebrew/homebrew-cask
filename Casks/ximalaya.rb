cask 'ximalaya' do
  version '1.2.19,1595577592'
  sha256 '109ba925d97fc0206051f41e38f167b8e56a07b78b7e14268d633cf77494756a'

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "http://s1.xmcdn.com/yx/ximalaya-pc/#{version.before_comma}/download/Ximalaya-#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac'
  name 'ximalaya'
  name '喜马拉雅'
  homepage 'https://www.ximalaya.com/'

  app '喜马拉雅.app'
end
