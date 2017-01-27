cask 'wacom-intuos-tablet' do
  version '6.3.20-8'
  sha256 'c0ede699f001ffde7fe4ca27df7c62720bdad29a9b04fd8be646ed81f2211ba5'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Intuos 4/5/Pro Tablet'
  homepage 'https://www.wacom.com/support/product-support/drivers'

  conflicts_with cask: 'wacom-intuos-3-tablet'

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
