class VmwareFusion < Cask
  version '7.0.0-2075534'
  sha256 'd1e104112301a94108fe73605625f5b04b13c86c777c6f9e66e1b39621562322'

  url 'https://download3.vmware.com/software/fusion/file/VMware-Fusion-7.0.0-2075534.dmg'
  homepage 'http://www.vmware.com/products/fusion/'

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  link 'VMware Fusion.app'
  before_uninstall do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
