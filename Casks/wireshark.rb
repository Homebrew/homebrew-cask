cask 'wireshark' do
  version '2.4.6'
  sha256 '0e51f0c7892422df8a755044344cb9f01d4b2bbc9f90bcc63fb4a791000106f8'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: 'a0d898cccc9101978dedd629f3455f4e0bad40b83cdcdfc8db988d68a740ebef'
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

  conflicts_with cask: 'wireshark-chmodbpf'
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
