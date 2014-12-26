cask :v1 => 'wireshark' do
  version '1.12.2'
  sha256 '39a94d55dfa3b27ea9a672df12d98509150bf022da2e581817374274215a0f9a'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "Wireshark #{version} Intel 64.pkg"
  postflight do
    if Process.euid == 0 then
      ohai 'Note:'
      puts <<-EOS.undent
        You executed 'brew cask' as the superuser.

        You must manually add users to group 'access_bpf' in order to use Wireshark
      EOS
    else
      system '/usr/bin/sudo', '-E', '--',
             '/usr/sbin/dseditgroup', '-o', 'edit', '-a', Etc.getpwuid(Process.euid).name, '-t', 'user', '--', 'access_bpf'
    end
  end

  uninstall :script  => {
                         :executable => '/usr/sbin/dseditgroup',
                         :args => ['-o', 'delete', 'access_bpf'],
                        },
            :pkgutil => 'org.wireshark.*',
            :delete  => [
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

  depends_on :x11 => true
end
