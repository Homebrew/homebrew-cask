cask 'wechat' do
  version '2.3.16'
  sha256 '9d5c533d349bd034f8ab80e51b254192f51baa6fcd75225e04b2a2d9c9da8bf3'

  url "https://dldir1.qq.com/weixin/mac/Wechat_#{version}.dmg"
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  depends_on macos: '>= :yosemite'

  app 'WeChat.app'
end
