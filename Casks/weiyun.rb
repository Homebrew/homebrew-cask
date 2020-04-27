cask 'weiyun' do
  version '3.0.4.406_2dc389'
  sha256 'be41ee57871992cb4ecfd477ecbb2bb6c264512c531d92c7f4ddf356b48bd64e'

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
