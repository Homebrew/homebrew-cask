class WiresharkDev < Cask
  url 'http://www.wireshark.org/download/osx/Wireshark%201.11.3%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.11.3'
  sha256 '6a7acafd344b4db8073e94dbb16c34a7e89ab1ed419011a73e2f64370e0bf8e4'
  install 'Wireshark 1.11.3 Intel 64.pkg'
  uninstall :pkgutil => 'org.wireshark.*'
end
