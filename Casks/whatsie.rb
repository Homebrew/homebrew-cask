cask 'whatsie' do
  version '2.1.0'
  sha256 '4d8aa3155f035428ee56127f2953152a6069333e22d8d2177e746314e2c31728'

  # github.com/Aluxian/Whatsie was verified as official when first introduced to the cask
  url "https://github.com/Aluxian/Whatsie/releases/download/v#{version}/whatsie-#{version}-osx.dmg"
  appcast 'https://github.com/Aluxian/Whatsie/releases.atom',
          checkpoint: 'a0754f575e81d5f0b18f43758690ec50d1bae237bdbe3302283f6569b65939ef'
  name 'Whatsie'
  homepage 'https://whatsie.chat/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'Whatsie.app'

  uninstall launchctl:  'com.aluxian.whatsie',
            login_item: 'UnofficialWhatsApp'

  zap delete: [
                '~/Library/Application Support/UnofficialWhatsApp',
                '~/Library/Application Support/Whatsie',
                '~/Library/Caches/com.aluxian.whatsie',
                '~/Library/Caches/com.aluxian.whatsie.ShipIt',
                '~/Library/Preferences/com.aluxian.whatsappfordesktop.plist',
                '~/Library/Preferences/com.aluxian.whatsie.helper.plist',
                '~/Library/Preferences/com.aluxian.whatsie.plist',
                '~/Library/Saved Application State/com.aluxian.whatsappfordesktop.savedState',
                '~/Library/Saved Application State/com.aluxian.whatsie.savedState',
              ]
end
