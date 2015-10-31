cask :v1 => 'virtualbox-extension-pack' do
  version '5.0.8-103449'
  sha256 'febd2c99909cb932a98c2b9f73ce8eb03fc183c8c8f2fc874985cf3d598f6b94'

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*},'')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  name 'VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org'
  license :closed
  tags :vendor => 'Oracle'

  stage_only true

  container :type => :naked

  postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'install', '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  end

  uninstall_postflight do
    system 'sudo', 'VBoxManage', 'extpack', 'uninstall', 'Oracle VM VirtualBox Extension Pack'
  end

  depends_on :cask => 'virtualbox'
end
