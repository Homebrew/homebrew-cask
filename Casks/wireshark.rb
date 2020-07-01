cask 'wireshark' do
  version '3.2.5'
  sha256 'c95277ecc61c22b900591d07dae94ef659fe1d80d584479ddc46855b4e3a3745'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/update/0/Wireshark/0.0.0/macOS/x86-64/en-US/stable.xml'
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

  auto_updates true
  conflicts_with cask: 'wireshark-chmodbpf'
  depends_on macos: '>= :sierra'

  app 'Wireshark.app'
  pkg 'Install ChmodBPF.pkg'
  pkg 'Add Wireshark to the system path.pkg'

  uninstall_preflight do
    system_command '/usr/sbin/installer',
                   args: [
                           '-pkg', "#{staged_path}/Uninstall ChmodBPF.pkg",
                           '-target', '/'
                         ],
                   sudo: true
    system_command '/usr/sbin/installer',
                   args: [
                           '-pkg', "#{staged_path}/Remove Wireshark from the system path.pkg",
                           '-target', '/'
                         ],
                   sudo: true
  end

  uninstall pkgutil: 'org.wireshark.*'

  zap trash: [
               '~/Library/Caches/org.wireshark.Wireshark',
               '~/Library/Cookies/org.wireshark.Wireshark.binarycookies',
               '~/Library/Preferences/org.wireshark.Wireshark.plist',
               '~/Library/Saved Application State/org.wireshark.Wireshark.savedState',
               '~/.config/wireshark',
             ]
end
