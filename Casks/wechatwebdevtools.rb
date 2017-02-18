cask 'wechatwebdevtools' do
  version '0.13.140600,013140600'
  sha256 '245af68e061dcdd61e511d44f7ef0e8ced0b0d3e103330108b564482a51fc976'

  url "https://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
