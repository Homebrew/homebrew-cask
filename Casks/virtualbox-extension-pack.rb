cask 'virtualbox-extension-pack' do
  if MacOS.version <= :lion
    version '4.3.38-106717'
    sha256 'ba739b8602de9eb9d9da63c730a2329dc72b454073a2525c46fa00df2b5dba1c'
  elsif MacOS.version == :mountain_lion
    version '5.0.26-108824'
    sha256 '2f2302c7ba3d00a1258fe8e7767a6eb08dccdc3c31f6e3eeb74063c2c268b104'
  else
    version '5.1.4-110228'
    sha256 '9462ff1b567c37ad9a33c0c7ca1925776615ec89b5a72563f29a8cc8514cf316'
  end

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
