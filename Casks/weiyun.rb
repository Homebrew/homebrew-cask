cask 'weiyun' do
  version '3.0.1.371_c31767'
  sha256 'e968dc136aaf9552a382bbb20ad6451e4bfe9e402475957defef36cae86ec917'

  # dldir1.qq.com/weiyun was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/weiyun/Weiyun_Mac_#{version}.dmg"
  appcast 'https://qzonestyle.gtimg.cn/qzone/qzactStatics/configSystem/data/65/config1.js'
  name 'weiyun'
  homepage 'https://www.weiyun.com/'

  app 'Weiyun.app'

  uninstall quit: 'com.tencent.MacWeiyun'

  zap trash: [
               '~/Library/Preferences/com.tencent.MacWeiyun.plist',
               '~/Library/Saved Application State/com.tencent.MacWeiyun.savedState',
             ]
end
