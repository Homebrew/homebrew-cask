class Wireshark < Cask
  url 'http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%201.10.1%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.10.1'
  sha1 '428f974cc5c71cced647d42a1d7997ba5cb49c3a'
  link :none
  install 'Wireshark 1.10.1 Intel 64.pkg'
  uninstall :pkgutil => 'org.wireshark.*'
end
