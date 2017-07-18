cask 'wireshark' do
  version '2.2.8'
  sha256 'efc681a6ef2bb52e76e15853c5d1b143078c548951d256283a53cc61c894d77f'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: '4fa50cf63466dc33edae4b07387721c83d71aad5c3a636e11475d8edd0abfd8d'
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
                       '/private/etc/manpaths.d/Wireshark',
                       '/private/etc/paths.d/Wireshark',
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

  zap delete: '~/Library/Saved Application State/org.wireshark.Wireshark.savedState'
end
