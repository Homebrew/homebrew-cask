cask :v1 => 'wacom-tablet' do
  version '6.3.11-3a'
  sha256 '10a32f65853594e6e4c4eae333f1786c3e87dd936cb5f678584f62239e02a298'

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
