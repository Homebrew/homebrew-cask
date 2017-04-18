cask 'wireshark' do
  version '2.2.6'
  sha256 'efe30c1729543ae95ce22ad89d41251fee94e38d3d72a4f7a2a25e86a8bc66fe'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: 'd355630c719be209a86c1eb2e74d57bc85549366fac1cdd6180ae0c72772e9c3'
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

  depends_on macos: '>= :mountain_lion'

  pkg "Wireshark #{version} Intel 64.pkg"

  postflight do
    system_command '/usr/sbin/dseditgroup',
                   args: [
                           '-o', 'edit',
                           '-a', Etc.getpwuid(Process.euid).name,
                           '-t', 'user',
                           '--', 'access_bpf'
                         ],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership '/Library/Application Support/Wireshark'

    system_command '/usr/sbin/dseditgroup',
                   args: [
                           '-o',
                           'delete',
                           'access_bpf',
                         ],
                   sudo: true
  end

  uninstall pkgutil: 'org.wireshark.*',
            delete:  [
                       '/Library/LaunchDaemons/org.wireshark.ChmodBPF.plist',
                       '/usr/local/bin/capinfos',
                       '/usr/local/bin/dftest',
                       '/usr/local/bin/dumpcap',
                       '/usr/local/bin/editcap',
                       '/usr/local/bin/mergecap',
                       '/usr/local/bin/randpkt',
                       '/usr/local/bin/rawshark',
                       '/usr/local/bin/text2pcap',
                       '/usr/local/bin/tshark',
                       '/usr/local/bin/wireshark',
                     ]
end
