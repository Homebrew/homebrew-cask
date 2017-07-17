cask 'wechatwebdevtools' do
  version '0.19.191100'
  sha256 'd0e7c2814546b5667dfc87602029876bc3956a213f69103194576ea6a53d5dab'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
