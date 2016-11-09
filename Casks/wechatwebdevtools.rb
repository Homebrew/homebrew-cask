cask 'wechatwebdevtools' do
  version '0.10.102800,010102800'
  sha256 '84dedd2680afc42a951579e4ca3278e69cfa27193eb0f288be7e9da73b5d3cd7'

  url "http://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
