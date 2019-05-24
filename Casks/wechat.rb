cask 'wechat' do
  version '2.3.25.18_1558616799'
  sha256 'bab2930993fefdf1cb4bb663c4e365665d67cd96137977408049b1d1c6abe2d6'

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
