cask 'wechat' do
  version '2.3.17.18'
  sha256 '25c9d8aa5a2f62b08484940f43ca6a12a72ffdcea71c6459a217f25f3fef3c6c'

  url "https://dldir1.qq.com/weixin/mac/WeChat_#{version}.dmg"
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  depends_on macos: '>= :yosemite'

  app 'WeChat.app'
end
