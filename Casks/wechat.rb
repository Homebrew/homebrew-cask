cask 'wechat' do
  version '2.3.15'
  sha256 '46a8ae707addfb6544266244a6d140b07f06ede63815b4ed646e6a36ac3f4200'

  url "https://dldir1.qq.com/weixin/mac/Wechat_#{version}.dmg"
  name 'WeChat for Mac'
  name '微信 Mac 版'
  homepage 'https://mac.weixin.qq.com/'

  depends_on macos: '>= :yosemite'

  app 'WeChat.app'
end
