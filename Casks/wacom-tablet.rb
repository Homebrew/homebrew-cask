cask :v1 => 'wacom-tablet' do
  version '6.3.8-2'
  sha256 'a1812ba11896841fd592de889753aaf50fd86bb6278c05270a1f8a0c80365969'

  url "http://cdn.wacom.com/u/drivers/mac/pro/WacomTablet_#{version}.dmg"
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
