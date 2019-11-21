cask 'wireshark' do
  version '3.1.1'
  sha256 '6e319b729405b72583e976ee87db6a92a785ce1144dd5581ba9df8d01ab3ac98'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.wireshark.org/download.html&splitter_1=stable&index_1=1&splitter_2=development&index_2=0'
  name 'Wireshark'
  homepage 'https://www.wireshark.org/'

  conflicts_with cask: 'wireshark-chmodbpf'
  depends_on macos: '>= :sierra'

  app 'Wireshark.app'
  pkg 'Install ChmodBPF.pkg'
  pkg 'Add Wireshark to the system path.pkg'

  uninstall_preflight do
    set_ownership '/Library/Application Support/Wireshark'
    system_command '/usr/sbin/dseditgroup', args: ['-o', 'delete', 'access_bpf'], sudo: true
  end

  uninstall pkgutil:   'org.wireshark.*',
            launchctl: 'org.wireshark.ChmodBPF'

  zap trash: '~/Library/Saved Application State/org.wireshark.Wireshark.savedState'
end
