cask 'wireshark-chmodbpf' do
  version '2.0.5'
  sha256 '9fe81f0738fb718cb7340ab4f08094d84cc6343d0f299df4dd56f153483446a5'

  url "https://www.wireshark.org/download/osx/all-versions/Wireshark%20#{version}%20Intel%2064.dmg"
  name 'Wireshark-ChmodBPF'
  homepage 'https://www.wireshark.org/'

  installer script: '/usr/sbin/installer',
            args:   [
                      '-applyChoiceChangesXML',
                      "#{staged_path}/chmodbpf_only.xml",
                      '-package',
                      "#{staged_path}/Wireshark #{version} Intel 64.pkg",
                      '-target',
                      '/',
                    ]

  preflight do
    # shim script (https://github.com/caskroom/homebrew-cask/pull/21318)
    FileUtils.touch "#{staged_path}/chmodbpf_only.xml"
    chmodbpf_only = File.open "#{staged_path}/chmodbpf_only.xml", 'w'
    chmodbpf_only.puts '<?xml version="1.0" encoding="UTF-8"?>'
    chmodbpf_only.puts '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">'
    chmodbpf_only.puts '<plist version="1.0">'
    chmodbpf_only.puts '<array>'
    chmodbpf_only.puts '  <dict>'
    chmodbpf_only.puts '    <key>attributeSetting</key>'
    chmodbpf_only.puts '    <integer>0</integer>'
    chmodbpf_only.puts '    <key>choiceAttribute</key>'
    chmodbpf_only.puts '    <string>selected</string>'
    chmodbpf_only.puts '    <key>choiceIdentifier</key>'
    chmodbpf_only.puts '    <string>wireshark</string>'
    chmodbpf_only.puts '  </dict>'
    chmodbpf_only.puts '  <dict>'
    chmodbpf_only.puts '    <key>attributeSetting</key>'
    chmodbpf_only.puts '    <integer>0</integer>'
    chmodbpf_only.puts '    <key>choiceAttribute</key>'
    chmodbpf_only.puts '    <string>selected</string>'
    chmodbpf_only.puts '    <key>choiceIdentifier</key>'
    chmodbpf_only.puts '    <string>cli</string>'
    chmodbpf_only.puts '  </dict>'
    chmodbpf_only.puts '</array>'
    chmodbpf_only.puts '</plist>'
    chmodbpf_only.close
  end

  postflight do
    if Process.euid.zero?
      ohai 'Note:'
      puts <<-EOS.undent
        You executed 'brew cask' as the superuser.

        You must manually add users to group 'access_bpf' in order to use Wireshark
      EOS
    else
      system '/usr/bin/sudo', '-E', '--',
             '/usr/sbin/dseditgroup', '-o', 'edit', '-a', Etc.getpwuid(Process.euid).name, '-t', 'user', '--', 'access_bpf'
    end
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
    puts <<-EOS.undent
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
