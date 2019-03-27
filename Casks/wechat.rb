cask 'wechat' do
  version '2.3.23.17_1548069461'
  sha256 '64aa3cea43988c672a36bc31f1788e9454761d97c6da0a27ad1ceafb03613c96'

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
