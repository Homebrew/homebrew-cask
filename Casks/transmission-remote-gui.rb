class TransmissionRemoteGui < Cask
  url 'https://transmisson-remote-gui.googlecode.com/files/transgui-5.0.1.dmg'
  homepage 'https://code.google.com/p/transmisson-remote-gui/'
  version '5.0.1'
  sha256 'b961aeb244b2519563837745f3475d21379e3da32bae2b3cbb20ca91d1a90d75'
  install 'transgui.pkg'
  uninstall :pkgutil => 'com.transgui.*'
end
