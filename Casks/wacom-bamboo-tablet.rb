class WacomBambooTablet < Cask
  url 'http://cdn.wacom.com/U/Drivers/Mac/Consumer/533/PenTablet_5.3.3-3.dmg'
  homepage 'http://us.wacom.com/en/support/drivers'
  version '5.3.3-3'
  sha256 '6ba4469ad70d779c4dc95e1ba71469325932601bffda74d6c1d7e6bb49d0fe70'
  install 'Install Wacom Tablet.pkg'
  uninstall :launchctl => 'com.wacom.pentablet',
    :quit => [
      'com.wacom.TabletDriver',
      'com.wacom.PenTabletDriver',
      'com.wacom.ConsumerTouchDriver'
    ],
    :pkgutil => 'com.wacom.installpentablet'
end
