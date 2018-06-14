cask 'wechat' do
  version '2.3.14'
  sha256 '439595f1203e16c5af48508e9fa57737ace26306894b4d9784c94d63a906f261'

  url "https://dldir1.qq.com/weixin/mac/Wechat_#{version}.dmg"
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  depends_on macos: '>= :yosemite'

  app 'WeChat.app'
end
