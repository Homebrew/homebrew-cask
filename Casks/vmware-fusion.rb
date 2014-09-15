class VmwareFusion < Cask
  version '7.0.0-2075534'
  sha256 '3d9d7823c990258e35257923e2d7d540129f488407be19708392a2ecc27343b5'

  url 'https://download3.vmware.com/software/fusion/file/VMware-Fusion-7.0.0-2075534-light.dmg'
  homepage 'http://www.vmware.com/products/fusion/'

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  app 'VMware Fusion.app'
  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
