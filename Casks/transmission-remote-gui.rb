class TransmissionRemoteGui < Cask
  url 'https://transmisson-remote-gui.googlecode.com/files/transgui-5.0.1.dmg'
  homepage 'https://code.google.com/p/transmisson-remote-gui/'
  version '5.0.1'
  sha1 '52905d9ba6c3247410c6048a367d602942ea3456'
  install 'transgui.pkg'
  uninstall :pkgutil => 'com.transgui.*'
end
