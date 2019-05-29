cask 'usb-overdrive' do
  version '3.4'
  sha256 '8dd426c9bb2ab048269189acea143df9e77bbe106747f2a2d505d75e4079b340'

  url "http://www.usboverdrive.com/download/USB-Overdrive-#{version.no_dots}.dmg"
  name 'USB Overdrive'
  homepage 'http://www.usboverdrive.com/'

  pkg 'Install USB Overdrive.pkg'

  uninstall pkgutil: 'com.usboverdrive.installer'
end
