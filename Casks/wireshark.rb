class Wireshark < Cask
  url 'https://2.na.dl.wireshark.org/osx/Wireshark%201.10.6%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.10.6'
  sha256 '3551e7274d6d9f1264c35cd414822d7439ebb48563b321d83607523b515e54a2'
  install 'Wireshark 1.10.6 Intel 64.pkg'

  after_install do
    if Process.euid == 0 then
      ohai "Note:"
      puts <<-EOS.undent
              You executed 'brew cask' as the superuser.

              You must manually add users to group 'access_bpf' in order to use Wireshark

              EOS
    else
      system '/usr/bin/sudo', '-E', '--',
             '/usr/sbin/dseditgroup', '-o', 'edit', '-a', Etc.getpwuid(Process.euid).name, '-t', 'user', 'access_bpf'
    end
  end

  uninstall :script => {
                        :executable => '/usr/sbin/dseditgroup',
                        :args => ['-o', 'delete', 'access_bpf'],
                       },
            :pkgutil => 'org.wireshark.*',
            :files => [
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
