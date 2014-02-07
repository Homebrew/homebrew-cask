class WacomBambooTablet < Cask
  url 'http://cdn.wacom.com/U/Drivers/Mac/Consumer/533/PenTablet_5.3.3-3.dmg'
  homepage 'http://us.wacom.com/en/support/drivers'
  version '5.3.3-3'
  sha1 '8a465a39be30be10dd49cb0f8245b0dd6ef990b8'
  install 'Install Wacom Tablet.pkg'
  uninstall :launchctl => 'com.wacom.pentablet',
    :quit => [
      'com.wacom.TabletDriver',
      'com.wacom.PenTabletDriver',
      'com.wacom.ConsumerTouchDriver'
    ],
    :pkgutil => 'com.wacom.installpentablet'
end
