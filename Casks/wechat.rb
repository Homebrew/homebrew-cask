cask 'wechat' do
  version '2.3.26.18'
  sha256 'd0c73ad5484d9d69510ed6dcde6b2c06a3c240a669f12526dacdad526e71b178'

  url 'https://dldir1.qq.com/weixin/mac/WeChatMac.dmg'
  appcast 'https://dldir1.qq.com/weixin/mac/mac-release.xml'
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'WeChat.app'

  uninstall quit: 'com.tencent.xinWeChat'

  zap trash: [
               '~/Library/Application Scripts/com.tencent.xinWeChat',
               '~/Library/Caches/com.tencent.xinWeChat',
               '~/Library/Containers/com.tencent.xinWeChat',
               '~/Library/Cookies/com.tencent.xinWeChat.binarycookies',
               '~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat',
               '~/Library/Preferences/com.tencent.xinWeChat.plist',
             ]
end
