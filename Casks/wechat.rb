cask 'wechat' do
  version '2.3.25.17_1558511076'
  sha256 'b66780bc663376efb6386631283a20e77a0e236f69361273c3237c08a36c6704'

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
