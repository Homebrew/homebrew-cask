cask 'weiyun' do
  version '3.0.5.408_7dd9d0'
  sha256 '718bf7806d76645a2d7379fde23a668096a87ad7cd25649a1ebaff82e84a67be'

  # dldir1.qq.com/weiyun/ was verified as official when first introduced to the cask
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
