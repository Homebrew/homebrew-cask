cask :v1 => 'usb-overdrive' do
  version '3.1'
  sha256 '1a93082f1a2236bca088372c54b1933b3e491c3a986a1f13f78b59fda0c40fa2'

  url "http://www.senlick.com/macsw/USB-Overdrive-#{version.gsub('.','')}.dmg"
  homepage 'http://www.usboverdrive.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Install USB Overdrive.pkg'

  uninstall :pkgutil => 'com.usboverdrive.installer'
end
