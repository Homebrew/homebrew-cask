cask 'virtualbox-extension-pack' do
  if MacOS.version <= :lion
    version '4.3.40-110317a'
    sha256 '829812f9a94204cd206968a8b8c3ca14f719f9cc8e3e1c6825b68c2c3da13033'
  elsif MacOS.version == :mountain_lion
    version '5.0.32-112930'
    sha256 '3a0c45eb2471566787def7d73f8c01b03a806e5b2042c21911c2142dafdf9a44'
  else
    version '5.1.16-113841'
    sha256 'a838711616bf015be192c99b2282731321d062ea061a51bd78676ed47b1fc709'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '3b19da469fd33ed5a7d8d1b726a3dc979913b86484b1e78aa386f88b68a82672'
  name 'Oracle VirtualBox Extension Pack'
  homepage 'https://www.virtualbox.org/'

  depends_on cask: 'virtualbox'
  container type: :naked

  stage_only true

  postflight do
    system_command '/usr/local/bin/VBoxManage',
                   args: [
                           'extpack', 'install',
                           '--replace', "#{staged_path}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
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
end
