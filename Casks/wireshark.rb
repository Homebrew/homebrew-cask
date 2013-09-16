class Wireshark < Cask
  url 'http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%201.10.2%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.10.2'
  sha1 'f3af6443f7c25c27824014fd88e8cb1460ecbb08'
  link :none
  install 'Wireshark 1.10.2 Intel 64.pkg'
  uninstall :pkgutil => 'org.wireshark.*', 
            :files => %w(capinfos dftest dumpcap editcap mergecap randpkt
                         rawshark text2pcap tshark 
                         wireshark).map { |file| '/usr/local/bin/' << file}
end
