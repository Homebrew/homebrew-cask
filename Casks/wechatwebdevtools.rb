cask 'wechatwebdevtools' do
  version '0.17.172600'
  sha256 'cbe73da09f9503ebc4d5ae449bcfafbcd61bbc88626e328b9aef653c4ea0961a'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
