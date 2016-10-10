cask 'wacom-intuos-tablet' do
  version '6.3.15-2'
  sha256 '2a36df11a877b6c75e080477d34fad4af2c7f0758efaeb792cffc302d836f590'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  name 'Wacom Intuos3/4/5 Tablet'
  homepage 'https://www.wacom.com/'

  conflicts_with cask: 'wacom-intuos-pro-tablet'

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
