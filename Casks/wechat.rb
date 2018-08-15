cask 'wechat' do
  version '2.3.18.17'
  sha256 '4206bb17ff07033488126f3eb3af82d2b55f5b43c8862459bfe9043c9e737d5f'

  url "https://dldir1.qq.com/weixin/mac/WeChat_#{version}.dmg"
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  depends_on macos: '>= :yosemite'

  app 'WeChat.app'
end
