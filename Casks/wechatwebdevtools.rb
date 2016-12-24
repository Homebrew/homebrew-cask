cask 'wechatwebdevtools' do
  version '0.11.112301,011112301a'
  sha256 '035a9f921ee1d83bb19f87fc9512db2411e5610f67b175a112a8224ec09ec223'

  url "http://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
