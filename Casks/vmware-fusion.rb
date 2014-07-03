class VmwareFusion < Cask
  version '6.0.4-1887983'
  sha256 'fe392850cd3578b101b3601f19704485fbb66ce1c5fa1367e464a0cf91e41a68'

  url 'https://download3.vmware.com/software/fusion/file/VMware-Fusion-6.0.4-1887983-light.dmg'
  homepage 'http://www.vmware.com/products/fusion/'

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  link 'VMware Fusion.app'
  before_uninstall do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
