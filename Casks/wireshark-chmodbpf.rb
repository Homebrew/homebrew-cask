cask 'wireshark-chmodbpf' do
  version '2.2.5'
  sha256 '459998af108d3c002bf23db703af13cd56cff35da0d93eceb0e8f722aa26d71c'

  url "https://www.wireshark.org/download/osx/all-versions/Wireshark%20#{version}%20Intel%2064.dmg"
  appcast 'https://www.wireshark.org/download/osx/',
          checkpoint: '46112b2ccfdd4900eef5f6b633f22f67f2d003a8b6f17fd951b0aa6fc7e0d28e'
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

  uninstall script:  {
                       executable: '/usr/sbin/dseditgroup',
                       args:       ['-o', 'delete', 'access_bpf'],
                     },
            pkgutil: 'org.wireshark.ChmodBPF.pkg',
            delete:  [
                       '/Library/LaunchDaemons/org.wireshark.ChmodBPF.plist',
                     ],
            rmdir:   [
                       '/Library/Application Support/Wireshark/ChmodBPF',
                       '/Library/Application Support/Wireshark',
                     ]

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
