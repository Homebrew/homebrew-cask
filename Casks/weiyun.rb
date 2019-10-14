cask 'weiyun' do
  version '3.0.2.386_52f040'
  sha256 'bba284e3025879637e92e76f397cbd090524056912008cd22c8fea6f71f1b177'

  # dldir1.qq.com/weiyun was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/weiyun/mac/Weiyun_Mac_#{version}.dmg"
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
