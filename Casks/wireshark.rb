cask 'wireshark' do
  version '2.4.0'
  sha256 '20c2e5fa8ec302fc47100ad42f8d2020e629a72b75a7343929206d3274bd08b2'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: '0645b35f9985b5ccd49a2d59603dbd57efeaadbd71439dc9cfe8271798d61e0d'
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

  uninstall pkgutil:   'org.wireshark.*',
            launchctl: 'org.wireshark.ChmodBPF',
            delete:    [
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
