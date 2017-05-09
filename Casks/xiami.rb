cask 'xiami' do
  version '3.0.5'
  sha256 'af32206caeb848b65eb0e16f16aa1c94c3b1b6044eb14f99413b82947d1f10f3'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url "http://gxiami.alicdn.com/xiami-desktop%2fupdate%2f%e8%99%be%e7%b1%b3%e9%9f%b3%e4%b9%90-#{version}.dmg"
  name 'Xiami'
  name '虾米音乐'
  homepage 'http://www.xiami.com/'

  app '虾米音乐.app'

  uninstall quit: 'com.xiami.client'

  zap delete: [
                '~/Library/Application Support/XIAMI-MUSIC',
                '~/Library/Preferences/com.xiami.client.helper.plist',
                '~/Library/Preferences/com.xiami.client.plist',
                '~/Library/Saved Application State/com.xiami.client.savedState',
              ]
end
