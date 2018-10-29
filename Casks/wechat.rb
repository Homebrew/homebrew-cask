cask 'wechat' do
  version '2.3.19.18'
  sha256 '11016b77e6af6a006c3074cbeed68dd33c252ba8cbc721cf75fdab736c630f84'

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
