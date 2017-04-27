cask 'wechatwebdevtools' do
  version '0.15.152900'
  sha256 'b219cc42819dc2fa41ca12fda58e8e8f2adca71531a6847f10787ccb9e2f3223'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
