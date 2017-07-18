cask 'wireshark' do
  version '2.2.7'
  sha256 '6d46e7270fc6b661ece24c0fcaf56c7e4ce4f65501ef055ea46c6cfdf95c6dcb'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: '6ee31ea196b816cef77baae0b19fb88c6bdef3af8543049d5a293ab3fba60838'
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
