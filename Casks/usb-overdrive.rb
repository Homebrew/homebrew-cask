cask :v1 => 'usb-overdrive' do
  version '3.1'
  sha256 '1a93082f1a2236bca088372c54b1933b3e491c3a986a1f13f78b59fda0c40fa2'

  # senlick.com is the official download host per the vendor homepage
  url "http://www.senlick.com/macsw/USB-Overdrive-#{version.gsub('.','')}.dmg"
  homepage 'http://www.usboverdrive.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Install USB Overdrive.pkg'

  uninstall :pkgutil => 'com.usboverdrive.installer'
end
