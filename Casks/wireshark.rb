class Wireshark < Cask
  url 'https://2.na.dl.wireshark.org/osx/Wireshark%201.10.5%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.10.5'
  sha1 '59c496f52437ce0d2b836abbf546191f50345c8e'
  link :none
  install 'Wireshark 1.10.5 Intel 64.pkg'
  uninstall :pkgutil => 'org.wireshark.*', 
            :files => %w(capinfos dftest dumpcap editcap mergecap randpkt
                         rawshark text2pcap tshark 
                         wireshark).map { |file| '/usr/local/bin/' << file}
end
