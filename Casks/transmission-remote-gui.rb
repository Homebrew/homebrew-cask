class TransmissionRemoteGui < Cask
  url 'https://transmisson-remote-gui.googlecode.com/files/transgui-5.0.dmg'
  homepage 'https://code.google.com/p/transmisson-remote-gui/'
  version '5.0'
  sha1 '3a59a1ff69e4f80500b7fb010146d644920e7cc0'
  install 'transgui.pkg'
  uninstall :pkgutil => 'com.transgui.*'
end
