cask 'wireshark-chmodbpf' do
  version '2.6.3'
  sha256 '5f919d58ba1286631f2a878d7ec5acf430680f57d3d630d76e096077b4494418'

  url "https://www.wireshark.org/download/osx/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/'
  name 'Wireshark-ChmodBPF'
  homepage 'https://www.wireshark.org/'

  conflicts_with cask: 'wireshark'
  depends_on macos: '>= :mountain_lion'

  pkg "Wireshark #{version} Intel 64.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'wireshark',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   'choiceIdentifier' => 'chmodbpf',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   'choiceIdentifier' => 'cli',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
               ]

  uninstall_preflight do
    set_ownership '/Library/Application Support/Wireshark'
  end

  uninstall pkgutil:   'org.wireshark.ChmodBPF.pkg',
            launchctl: 'org.wireshark.ChmodBPF',
            script:    {
                         executable:   '/usr/sbin/dseditgroup',
                         args:         ['-o', 'delete', 'access_bpf'],
                         must_succeed: false,
                         sudo:         true,
                       }

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
