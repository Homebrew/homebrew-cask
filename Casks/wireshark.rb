cask 'wireshark' do
  version '2.2.3'
  sha256 '300195804c9545a75632c191fb1c5491f18e314b01178a2abe18faab78c8e150'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

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

  uninstall script:  {
                       executable: '/usr/sbin/dseditgroup',
                       args:       ['-o', 'delete', 'access_bpf'],
                     },
            pkgutil: 'org.wireshark.*',
            delete:  [
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
