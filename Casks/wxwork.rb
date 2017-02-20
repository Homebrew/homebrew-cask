cask 'wxwork' do
  version '1.3.5.1015'
  sha256 '842734b7ca05605d9a4746d29ccb9889290eca9295e57c3d9b1cc2bd0fc56498'

  url "https://dldir1.qq.com/foxmail/work_weixin/WXWork_#{version}.dmg"
  name 'Wechat Enterprise Version'
  name '企业微信'
  homepage 'https://work.weixin.qq.com/'

  app '企业微信.app'
end
