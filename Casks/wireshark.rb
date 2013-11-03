class Wireshark < Cask
  url 'http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%201.10.3%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.10.3'
  sha1 '5fa924b3c8c3e5bd80662b95047cea51b12ec0e8'
  link :none
  install 'Wireshark 1.10.3 Intel 64.pkg'
  uninstall :pkgutil => 'org.wireshark.*', 
            :files => %w(capinfos dftest dumpcap editcap mergecap randpkt
                         rawshark text2pcap tshark 
                         wireshark).map { |file| '/usr/local/bin/' << file}
end
