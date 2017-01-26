cask 'wacom-graphire2-tablet' do
  version '6.1.7-4'
  sha256 '593cdd4c51bee7714aecbef77d6e3809dd80a8393893ee1937f9c15c567bb4b4'

  # wacom.asia/sites/default/files/drivers was verified as official when first introduced to the cask
  url "https://www.wacom.asia/sites/default/files/drivers/WacomTablet_#{version}.dmg"
  name 'Graphire2 Wacom Tablet'
  homepage 'https://www.wacom.com/support/graphire-support'

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
