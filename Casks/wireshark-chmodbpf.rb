cask 'wireshark-chmodbpf' do
  version '3.0.6'
  sha256 '186970a1e0b610f23cb59314feaa3ce3eeb89b7c39bb5c34b4549910f1782f04'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/'
  name 'Wireshark-ChmodBPF'
  homepage 'https://www.wireshark.org/'

  conflicts_with cask: 'wireshark'
  depends_on macos: '>= :sierra'

  pkg 'Install ChmodBPF.pkg'

  uninstall_preflight do
    set_ownership '/Library/Application Support/Wireshark'
    system_command '/usr/sbin/dseditgroup', args: ['-o', 'delete', 'access_bpf'], sudo: true
  end

  uninstall pkgutil:   'org.wireshark.ChmodBPF.pkg',
            launchctl: 'org.wireshark.ChmodBPF'

  caveats do
    reboot
    <<~EOS
      This cask will install only the ChmodBPF package from the current Wireshark
      stable install package.
      An access_bpf group will be created and its members allowed access to BPF
      devices at boot to allow unprivileged packet captures.
      This cask is not required if installing the Wireshark cask. It is meant to
      support Wireshark installed from Homebrew or other cases where unprivileged
      access to macOS packet capture devices is desired without installing the binary
      distribution of Wireshark.
      The user account used to install this cask will be added to the access_bpf
      group automatically.
    EOS
  end
end
