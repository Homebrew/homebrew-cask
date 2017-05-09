class WacomIntuousDriver < Cask
  url 'http://cdn.wacom.com/u/drivers/mac/pro/WacomTablet_6.3.7-3.dmg'
  homepage 'http://us.wacom.com/en/support/drivers'
  version '6.3.7-3'
  sha1 '09f6232ad200de159f3bf204a18f3d978cb9e9ea'
  install 'Install Wacom Tablet.pkg'
  uninstall :launchctl => 'com.wacom.installwacomtablet',
    :quit => [
      'com.wacom.TabletDriver',
      'com.wacom.WacomTabletDriver',
      'com.wacom.WacomTouchDriver'
    ],
    :pkgutil => 'com.wacom.installwacomtablet'
end