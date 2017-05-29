cask 'wechatwebdevtools' do
  version '0.17.172600'
  sha256 '81dae5e1c9604915faa80e51f35f711f7991ceac027433bfe831d4edda79ca42'

  url "https://dldir1.qq.com/WechatWebDev/#{version.no_dots}/wechat_web_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
