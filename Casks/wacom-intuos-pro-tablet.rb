cask 'wacom-intuos-pro-tablet' do
  version '6.3.16-12'
  sha256 'd466685d873739a8e714aef5eb5a01f5c2e586bedc308e5b32eda5275af58004'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Intuos Pro Tablet'
  homepage 'https://www.wacom.com/'

  conflicts_with cask: 'wacom-intuos-tablet'

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
