cask 'weiyun' do
  version '3.0.1.360.30127'
  sha256 '58c4b865422b2e173b15e3ce26ff087bc6915aeffd356d992fdc2a3d8b130d7e'

  # dldir1.qq.com/weiyun was verified as official when first introduced to the cask
  url "https://dldir1.qq.com/weiyun/Weiyun_Mac_#{version}.dmg"
  name 'weiyun'
  homepage 'https://www.weiyun.com/'

  app 'Weiyun.app'

  uninstall quit: 'com.tencent.MacWeiyun'

  zap trash: [
               '~/Library/Preferences/com.tencent.MacWeiyun.plist',
               '~/Library/Saved Application State/com.tencent.MacWeiyun.savedState',
             ]
end
