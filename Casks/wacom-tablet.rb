class WacomTablet < Cask
  url 'http://cdn.wacom.com/u/drivers/mac/pro/WacomTablet_6.3.7-3.dmg'
  homepage 'http://www.wacom.com/'
  version '6.3.7-3'
  sha1 '09f6232ad200de159f3bf204a18f3d978cb9e9ea'
  install 'Install Wacom Tablet.pkg'
  uninstall :launchctl => 'com.wacom.wacomtablet',
            :quit => [
                      'com.wacom.TabletDriver',
                      'com.wacom.WacomTabletDriver',
                      'com.wacom.WacomTouchDriver',
                     ],
            :kext => [
                      'com.Wacom.iokit.TabletDriver',
                      'com.wacom.kext.wacomtablet',
                      'com.silabs.driver.CP210xVCPDriver',
                      'com.silabs.driver.CP210xVCPDriver64',
                      ],
            :pkgutil => 'com.wacom.installwacomtablet'
end
