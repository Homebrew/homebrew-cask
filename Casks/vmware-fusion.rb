class VmwareFusion < Cask
  version '6.0.3-1747349'
  sha256 'd51daed60baef6252136d9024ac6dd59df3b402bc8a9aa7cd1d663d61e6dc6d8'

  url 'https://download3.vmware.com/software/fusion/file/VMware-Fusion-6.0.3-1747349-light.dmg'
  homepage 'http://www.vmware.com/products/fusion/'

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  link 'VMware Fusion.app'
  before_uninstall do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
