cask 'wechatwebdevtools' do
  version '0.17.170900'
  sha256 '6aae58fd615f909d70eef1d13cb729e78af7f32429e60c5fd758cfee2230f567'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
