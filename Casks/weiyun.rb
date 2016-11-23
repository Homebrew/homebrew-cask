cask 'weiyun' do
  version '2.0.002.20632'
  sha256 'e219143abb8b5cbf1063a28f72398e8747bdec0cd95ad03369edbb16a8dd9043'

  # dldir1.qq.com/weiyun was verified as official when first introduced to the cask
  url "http://dldir1.qq.com/weiyun/Weiyun_Mac_#{version}.dmg"
  name 'weiyun'
  homepage 'https://www.weiyun.com/'

  app 'Weiyun.app'

  uninstall quit: 'com.tencent.MacWeiyun'

  zap delete: [
                '~/Library/Preferences/com.tencent.MacWeiyun.plist',
                '~/Library/Saved Application State/com.tencent.MacWeiyun.savedState',
              ]
end
