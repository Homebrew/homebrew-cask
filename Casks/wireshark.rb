class Wireshark < Cask
  version '1.12.0'
  sha256 '2e4131fe32b72339cb8d8191e591711c16f4c5950657428810fdfce91b0dead2'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  homepage 'http://www.wireshark.org'

  install "Wireshark #{version} Intel 64.pkg"

  caveats do
    x11_required
  end

  postflight do
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
