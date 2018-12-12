cask 'wireshark' do
  version '2.6.5'
  sha256 'b4e2cb6c9ddb0f700ef8eaba9f19248f92069a27622620646f46640e294c678f'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/'
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

  conflicts_with cask: 'wireshark-chmodbpf'
  depends_on macos: '>= :mountain_lion'

  pkg "Wireshark #{version} Intel 64.pkg"

  uninstall_preflight do
    set_ownership '/Library/Application Support/Wireshark'
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
                       ],
            script:    {
                         executable:   '/usr/sbin/dseditgroup',
                         args:         ['-o', 'delete', 'access_bpf'],
                         must_succeed: false,
                         sudo:         true,
                       }

  zap trash: '~/Library/Saved Application State/org.wireshark.Wireshark.savedState'
end
