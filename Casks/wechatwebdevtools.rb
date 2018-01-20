cask 'wechatwebdevtools' do
  version '1.02.1801081'
  sha256 'c7e359f480a770bef33931a45c4c964c075e6fcef3e8aa70f358490524da3b56'

  url "https://dldir1.qq.com/WechatWebDev/1.0.0/20#{version.patch}/wechat_devtools_#{version}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
