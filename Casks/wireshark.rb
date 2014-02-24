class Wireshark < Cask
  url 'https://2.na.dl.wireshark.org/osx/Wireshark%201.10.5%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'
  version '1.10.5'
  sha256 '301ac9f98d09726f8b06bf0a2054dabfaf06040274acc1640e52bdb04db92881'
  install 'Wireshark 1.10.5 Intel 64.pkg'

  after_install do
    if Process.euid == 0 then
      ohai "Note:"
      puts <<-EOS.undent
              You executed 'brew cask' as the superuser.

              You must manually add users to group 'access_bpf' in order to use Wireshark

              EOS
    else
      system 'sudo', '-E', '--', '/usr/sbin/dseditgroup', '-o', 'edit', '-a', Etc.getpwuid(Process.euid).name, '-t', 'user', 'access_bpf'
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
