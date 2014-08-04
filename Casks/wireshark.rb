class Wireshark < Cask
  version '1.10.8'
  sha256 'dad35fa72d763b19cbd11ae9d339144d3b205c1b3575d51368d9b81c43f1b527'

  url 'https://www.wireshark.org/download/osx/Wireshark%201.10.8%20Intel%2064.dmg'
  homepage 'http://www.wireshark.org'

  install 'Wireshark 1.10.8 Intel 64.pkg'

  caveats do
    x11_required
  end

  after_install do
    if Process.euid == 0 then
      ohai "Note:"
      puts <<-EOS.undent
              You executed 'brew cask' as the superuser.

              You must manually add users to group 'access_bpf' in order to use Wireshark

              EOS
    else
      system '/usr/bin/sudo', '-E', '--',
             '/usr/sbin/dseditgroup', '-o', 'edit', '-a', Etc.getpwuid(Process.euid).name, '-t', 'user', '--', 'access_bpf'
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
