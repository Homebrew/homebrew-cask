cask 'wechat' do
  version '2.3.16.17'
  sha256 '3969e7971307f709673c9123979d0c352b6139a02e02e1dcad7b564fdc19b772'

  url "https://dldir1.qq.com/weixin/mac/Wechat_#{version}.dmg"
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  depends_on macos: '>= :yosemite'

  app 'WeChat.app'
end
