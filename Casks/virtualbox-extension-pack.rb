cask 'virtualbox-extension-pack' do
  if MacOS.version <= :lion
    version '4.3.40-110317a'
    sha256 '829812f9a94204cd206968a8b8c3ca14f719f9cc8e3e1c6825b68c2c3da13033'
  elsif MacOS.version == :mountain_lion
    version '5.0.32-112930'
    sha256 '3a0c45eb2471566787def7d73f8c01b03a806e5b2042c21911c2142dafdf9a44'
  else
    version '5.1.14-112924'
    sha256 'baddb7cc49224ecc1147f82d77fce2685ac39941ac9b0aac83c270dd6570ea85'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '69ff967697383e82adfccadcc6e493391648adb709c427d4fef9ded116c08798'
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
