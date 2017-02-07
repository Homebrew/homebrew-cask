cask 'wechatwebdevtools' do
  version '0.12.130400,012130400'
  sha256 '13230a087565033ac1a25c09c0463af0dc864fab93e447e52022d89662d7f32f'

  url "https://dldir1.qq.com/WechatWebDev/#{version.after_comma}/wechat_web_devtools_#{version.before_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
