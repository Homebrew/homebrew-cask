cask 'wechat' do
  version '2.3.18.17'
  sha256 '6b8c6ed6fac4bff470423959f57525a0311455d7e7fc72286d5a5f8eb351852c'

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
