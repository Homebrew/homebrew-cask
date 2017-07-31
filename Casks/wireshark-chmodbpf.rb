cask 'wireshark-chmodbpf' do
  version '2.4.0'
  sha256 '20c2e5fa8ec302fc47100ad42f8d2020e629a72b75a7343929206d3274bd08b2'

  url "https://www.wireshark.org/download/osx/all-versions/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: '0645b35f9985b5ccd49a2d59603dbd57efeaadbd71439dc9cfe8271798d61e0d'
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

  postflight do
    system_command '/usr/sbin/dseditgroup',
                   args: [
                           '-o', 'edit',
                           '-a', Etc.getpwuid(Process.euid).name,
                           '-t', 'user',
                           '--', 'access_bpf'
                         ],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership '/Library/Application Support/Wireshark'

    system_command '/usr/sbin/dseditgroup',
                   args: [
                           '-o',
                           'delete',
                           'access_bpf',
                         ],
                   sudo: true
  end

  uninstall pkgutil:   'org.wireshark.ChmodBPF.pkg',
            launchctl: 'org.wireshark.ChmodBPF'

  caveats do
    <<-EOS.undent
      This cask will install only the ChmodBPF package from the current Wireshark
      stable install package.
      An access_bpf group will be created and its members allowed access to BPF
      devices at boot to allow unpriviledged packet captures.
      This cask is not required if installing the Wireshark cask. It is meant to
      support Wireshark installed from homebrew or other cases where unpriviledged
      access to macOS packet capture devices is desired without installing the binary
      distribution of Wireshark.
      The user account used to install this cask will be added to the access_bpf
      group automatically.
    EOS
    reboot
  end
end
