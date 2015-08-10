cask :v1 => 'virtualbox-extension-pack' do
  version '5.0.0-101573'
  sha256 'c357e36368883df821ed092d261890a95c75e50422b75848c40ad20984086a7a'

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
