cask 'wireshark' do
  version '3.2.4'
  sha256 '735d43bdbde1caeb9bfff89acc62acfeb05ffda36e6d0d243bc08333e60fdac6'

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
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/wireshark.wrapper.sh"
  binary shimscript, target: 'wireshark'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec #{appdir}/Wireshark.app/Contents/MacOS/Wireshark "$@"
    EOS
  end

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
