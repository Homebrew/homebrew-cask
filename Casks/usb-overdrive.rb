cask 'usb-overdrive' do
  if MacOS.version < :mountain_lion
    version '3.0.2'
    sha256 'd6bed831521a5ab2b82d7eede7be46953e1c010cc6e02ff11f3dd2532d7b0b13'
  else
    version '3.2'
    sha256 '5be1d46596f1e98e29a5634655f36fc3070ac08542c36cef77d8f516c883f6d7'
  end

  # senlick.com was verified as official when first introduced to the cask
  url "http://www.senlick.com/macsw/USB-Overdrive-#{version.no_dots}.dmg"
  name 'USB Overdrive'
  homepage 'http://www.usboverdrive.com/'
  license :commercial

  pkg 'Install USB Overdrive.pkg'

  uninstall pkgutil: 'com.usboverdrive.installer'
end
