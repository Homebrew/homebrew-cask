cask 'wacom-bamboo-tablet' do
  version '5.3.6-6'
  sha256 '3eb78dda089da8f4019782502fe59529a5e00afae8c89005d9f5cc9e04e2283e'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/consumer/pentablet_#{version}.dmg"
  name 'Wacom Bamboo Tablet'
  homepage 'https://us.wacom.com/en/support/drivers'

  pkg 'Install Wacom Tablet.pkg'

  uninstall launchctl: 'com.wacom.pentablet',
            quit:      [
                         'com.wacom.TabletDriver',
                         'com.wacom.PenTabletDriver',
                         'com.wacom.ConsumerTouchDriver',
                       ],
            pkgutil:   'com.wacom.installpentablet'
end
