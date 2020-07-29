cask 'wechat' do
  version '2.4.1.18'
  sha256 '336bc27938f64ea16c681259e79f9a4f96c442085475c759a929819facb30458'

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
