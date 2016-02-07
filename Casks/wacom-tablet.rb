cask 'wacom-tablet' do
  version '6.3.15-3'
  sha256 'eda52482d9c59bf93661ed3e333475d2039480ed9ce51cef70302e5dc8e3da58'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Tablet'
  homepage 'http://www.wacom.com/'
  license :gratis

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: 'com.wacom.wacomtablet',
            quit:      [
                         'com.wacom.TabletDriver',
                         'com.wacom.WacomTabletDriver',
                         'com.wacom.WacomTouchDriver',
                       ],
            kext:      [
                         'com.wacom.kext.ftdi',
                         'com.wacom.kext.wacomtablet',
                         'com.silabs.driver.CP210xVCPDriver',
                         'com.silabs.driver.CP210xVCPDriver64',
                       ],
            pkgutil:   'com.wacom.TabletInstaller',
            delete:    '/Applications/Wacom Tablet.localized'

  zap delete: [
                '~/Library//Preferences/com.wacom.wacomtablet.prefs',
                '~/Library//Preferences/com.wacom.wacomtouch.prefs',
              ]
end
