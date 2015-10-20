cask :v1 => 'virtualbox-extension-pack' do
  version '5.0.6-103037'   # virtualbox.rb and virtualbox-extension-pack.rb should be upgraded together
  sha256 '4eed4f3d253bffe4ce61ee9431d79cbe1f897b3583efc2ff3746f453450787b5'

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
