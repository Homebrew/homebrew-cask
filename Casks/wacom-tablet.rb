cask :v1 => 'wacom-tablet' do
  version '6.3.14-2'
  sha256 '4fc3aca61bb66f6690309ab022f61533b68a1f2f64ee1bd3a49a5852c3c9d9e8'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Tablet'
  homepage 'http://www.wacom.com/'
  license :gratis

  pkg 'Install Wacom Tablet.pkg'

  uninstall :launchctl => 'com.wacom.wacomtablet',
            :quit => [
                      'com.wacom.TabletDriver',
                      'com.wacom.WacomTabletDriver',
                      'com.wacom.WacomTouchDriver',
                     ],
            :kext => [
                      'com.wacom.kext.ftdi',
                      'com.wacom.kext.wacomtablet',
                      'com.silabs.driver.CP210xVCPDriver',
                      'com.silabs.driver.CP210xVCPDriver64',
                      ],
            :pkgutil => 'com.wacom.TabletInstaller',
            :delete => '/Applications/Wacom Tablet.localized'

  zap :delete =>  [
                    '~/Library//Preferences/com.wacom.wacomtablet.prefs',
                    '~/Library//Preferences/com.wacom.wacomtouch.prefs'
                  ]
end
