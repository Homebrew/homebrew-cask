cask 'wechat' do
  version '2.3.24.17_1553586184'
  sha256 '23bc1b7b49d90d9d1802ac0259201c51543050a2afd2ee63173c2b0e170417f0'

  url "https://dldir1.qq.com/weixin/mac/WeChat_#{version}.dmg"
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
               '~/Library/Containers/com.tencent.xinWeChat',
               '~/Library/Group Containers/$(TeamIdentifierPrefix)com.tencent.xinWeChat',
             ]
end
