cask 'wechatwebdevtools' do
  version '1.0.0,170830'
  sha256 '2e18b1a91f82b07e2eddf9efa97ed4ab74b1a7c046bab2f3556ef6d86153da76'

  url "https://dldir1.qq.com/WechatWebDev/#{version.before_comma}/20#{version.after_comma}/wechat_devtools_#{version.major_minor}#{version.patch}.#{version.after_comma}.dmg"
  name 'wechat web devtools'
  homepage 'https://mp.weixin.qq.com/debug/wxadoc/dev/devtools/download.html'

  app 'wechatwebdevtools.app'
end
