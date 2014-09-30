class VmwareFusion < Cask
  version '7.0.0-2103067'
  sha256 'f5b4bd80a2b8f6538ff24780998f73876acee1b65c1e38df0323734fa86d9e80'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  homepage 'http://www.vmware.com/products/fusion/'

  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool'
  app 'VMware Fusion.app'
  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
