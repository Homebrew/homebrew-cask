cask 'virtualbox-extension-pack' do
  version '5.1.0-108711'
  sha256 '7e9802dbbdf56dcd963f8ef368fe1f9ff9accbd74d9fb297b44af3d4af757ec7'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org'
  license :closed

  depends_on cask: 'virtualbox'
  container type: :naked

  stage_only true

  postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'install', '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  end

  uninstall_postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'uninstall', 'Oracle VM VirtualBox Extension Pack'
  end
end
