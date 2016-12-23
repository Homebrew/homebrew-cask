cask 'virtualbox-extension-pack' do
  if MacOS.version <= :lion
    version '4.3.40-110317a'
    sha256 '829812f9a94204cd206968a8b8c3ca14f719f9cc8e3e1c6825b68c2c3da13033'
  elsif MacOS.version == :mountain_lion
    version '5.0.30-112061'
    sha256 'f0880b7948bdc185d7e7be0fc98b551296ed9578f21e38d01b43771323a71a3d'
  else
    version '5.1.12-112440'
    sha256 '03111380afb06122a494595e966dffe3e2779840e8698e27e80f87342b291286'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/Oracle_VM_VirtualBox_Extension_Pack-#{version}.vbox-extpack"
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
