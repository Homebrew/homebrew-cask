cask :v1 => 'usb-overdrive' do
  version '3.0.2'
  sha256 'd6bed831521a5ab2b82d7eede7be46953e1c010cc6e02ff11f3dd2532d7b0b13'

  url "http://www.senlick.com/macsw/USB-Overdrive-#{version.gsub('.','')}.dmg"
  homepage 'http://www.usboverdrive.com/'
  license :unknown

  pkg 'Install USB Overdrive.pkg'
  uninstall :pkgutil => 'com.usboverdrive.installer'
end
