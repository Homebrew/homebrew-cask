cask 'wechat-web-devtools' do
  version '0.9.092300,20160923'
  sha256 '0c5c2038b30e7229b93bc4df574a45e438861fb4f430f99e063512cf01697693'

  url "http://dldir1.qq.com/WechatWebDev/mina/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  name '微信web开发者工具'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app '微信web开发者工具.app'
end
