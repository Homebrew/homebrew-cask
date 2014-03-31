class WacomTablet < Cask
  url 'http://cdn.wacom.com/u/drivers/mac/pro/WacomTablet_6.3.7-3.dmg'
  homepage 'http://www.wacom.com/'
  version '6.3.7-3'
  sha256 '894271d4ae01781664e8489e57471aaf78c7b84a48dce78b219a9259c6fc4e44'
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
