cask 'virtualbox-extension-pack' do
  version '5.2.0-118431'
  sha256 '005ba9211862643e2516d549e98b80942918047f1f6c55fcfe08c490dd1947bc'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: 'e791457c25b99d69f3d5ca028f6a7f6d88f7e2d85af5162a92a8c5f3aecf59b0'
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
                           '--accept-license=b674970f720eb020ad18926a9268607089cc1703908696d24a04aa870f34c8e8'
                         ],
                   sudo: true
  end

  uninstall_postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'uninstall',
                           'Oracle VM VirtualBox Extension Pack'
                         ],
                   sudo: true
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the
    VirtualBox Personal Use and Evaluation License at

    https://www.virtualbox.org/wiki/VirtualBox_PUEL
  EOS
end
