cask 'wireshark' do
  version '2.2.2'
  sha256 'acbe9372ec868a673cd609523779a2bae836e1950536a328b5a688d2f1d603f7'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

  pkg "Wireshark #{version} Intel 64.pkg"

  postflight do
    if Process.euid.zero?
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
