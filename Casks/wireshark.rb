cask :v1 => 'wireshark' do
  version '1.12.1'
  sha256 '3ce749efbcf89dd72b4e1c2336f4edd7111e05ce9cad8da2df189ac4e56fa1b7'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'
  license :unknown    # todo: improve this machine-generated value

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
