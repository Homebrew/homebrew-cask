cask 'wechatwebdevtools' do
  version '1.0.1,171019'
  sha256 '80554a42badb14ccc7c66cb5ecca5e59f680eddf35105b3700b30d81dde2bcf5'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.after_comma}/wechat_devtools_#{version.major_minor}#{version.patch}.#{version.after_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
