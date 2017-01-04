cask 'wechatwebdevtools' do
  version '0.11.122100,011122100'
  sha256 '725e53a81fe8755a04ab127d3494930dfc6390aa09c0b3e6bbf570f490e6edd2'

  url "http://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
