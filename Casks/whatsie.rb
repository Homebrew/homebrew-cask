cask 'whatsie' do
  version '2.0.19'
  sha256 'f40922bfc768460c1a56212abc34e7be1659e0b30a50ff1dd7fcd3fc77dd4aa0'

  # github.com/Aluxian/Whatsie was verified as official when first introduced to the cask
  url "https://github.com/Aluxian/Whatsie/releases/download/v#{version}/whatsie-#{version}-osx.dmg"
  appcast 'https://github.com/Aluxian/Whatsie/releases.atom',
          checkpoint: 'bda4afec7f0a0fe936a3d2202f1c49370545960b5f06f5bf36ac7bfd5eb9bf59'
  name 'Whatsie'
  homepage 'https://whatsie.chat/'
  license :mit

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
