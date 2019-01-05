cask 'wechat' do
  version '2.3.22.17'
  sha256 '87d7730ac8afbcd4e3173ff5adb798a7fa9060ef3143145de228dd186ce67ec0'

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
