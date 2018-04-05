cask 'wechatwebdevtools' do
  version '1.02.1803210'
  sha256 '7390bc33d42d4d2392dea44448904f193fc392f550119c7cf09ec81e6933107a'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
