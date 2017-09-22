cask 'wechatwebdevtools' do
  version '1.0.1,170913'
  sha256 '9bb46d15ec1ae4014f434ebdb39b7e67fd31dc0af5e0ed72aaf5bc479daded06'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.after_comma}/wechat_devtools_#{version.major_minor}#{version.patch}.#{version.after_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
