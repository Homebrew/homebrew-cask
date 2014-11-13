cask :v1 => 'wacom-bamboo-tablet' do
  version '5.3.5-4'
  sha256 '3368525540f01c6160839a6dee8618c887681d33ed61b15a1835def1cd2c70f2'

  url "http://cdn.wacom.com/u/productsupport/drivers/mac/consumer/pentablet_#{version}.dmg"
  homepage 'http://us.wacom.com/en/support/drivers'
  license :unknown

  pkg 'Install Wacom Tablet.pkg'
  uninstall :launchctl => 'com.wacom.pentablet',
    :quit => [
      'com.wacom.TabletDriver',
      'com.wacom.PenTabletDriver',
      'com.wacom.ConsumerTouchDriver'
    ],
    :pkgutil => 'com.wacom.installpentablet'
end
