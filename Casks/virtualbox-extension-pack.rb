cask 'virtualbox-extension-pack' do
  if MacOS.version <= :lion
    version '4.3.40-110317a'
    sha256 '829812f9a94204cd206968a8b8c3ca14f719f9cc8e3e1c6825b68c2c3da13033'
  elsif MacOS.version == :mountain_lion
    version '5.0.32-112930'
    sha256 '3a0c45eb2471566787def7d73f8c01b03a806e5b2042c21911c2142dafdf9a44'
  else
    version '5.1.20-114628'
    sha256 '51e85e3792a5a435d88368a52a363321acdd913f4fb3c55cd623911d447ad148'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '840fe5c7e77518c74fcb29830e0b3933596dc2a41784e7f3e76ce418fac96a66'
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
