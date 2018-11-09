cask 'wechat' do
  version '2.3.20.17'
  sha256 'e5f70b735cccfb83ccfc8011e7aefe1d063b14bf0d3065a0b9d8cb10695628d7'

  url "https://dldir1.qq.com/weixin/mac/WeChat_#{version}.dmg"
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
