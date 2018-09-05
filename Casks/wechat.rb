cask 'wechat' do
  version '2.3.18.19'
  sha256 '94277bacdb2163ab8e41978c85464b4495cba5b1c11f631727381356178ccee6'

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
