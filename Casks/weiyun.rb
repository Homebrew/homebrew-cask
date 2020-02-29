cask 'weiyun' do
  version '3.0.3.403_ce6a9d'
  sha256 'd8ae1a7cb20b9367cd14e4e4f52e56dacd1fc72c69e6cbaee0efba4d79c17f95'

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
