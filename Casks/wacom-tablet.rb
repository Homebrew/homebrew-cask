cask :v1 => 'wacom-tablet' do
  version '6.3.10w2'
  sha256 'b94c99a3bbf063767ed51848642e8bf6f4d381e72fea7ba0bb85860cdc6fc921'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/professional/WacomTablet_#{version}.dmg"
  homepage 'http://www.wacom.com/'
  license :unknown

  pkg 'Install Wacom Tablet.pkg'
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
