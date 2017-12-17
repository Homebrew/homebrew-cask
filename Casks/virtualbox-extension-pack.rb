cask 'virtualbox-extension-pack' do
  version '5.2.2-119230'
  sha256 '9328548ca8cbc526232c0631cb5a17618c771b07665b362c1e3d89a2425bf799'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '486d2ad103a38d1f6f661e9d3191e024b7e2fae6e6ce99ff03b073f43cd0f65b'
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org/'

  depends_on cask: 'virtualbox'
  container type: :naked

  stage_only true

  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'install',
                           '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack",
                           '--accept-license=56be48f923303c8cababb0bb4c478284b688ed23f16d775d729b89a2e8e5f9eb'
                         ],
                   sudo: true
  end

  uninstall_postflight do
    next unless File.exist?('/usr/local/bin/VBoxManage')
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'uninstall',
                           'Oracle VM VirtualBox Extension Pack'
                         ],
                   sudo: true
  end

  caveats <<~EOS
    Installing this Cask means you have AGREED to the
    VirtualBox Personal Use and Evaluation License at

    https://www.virtualbox.org/wiki/VirtualBox_PUEL
  EOS
end
