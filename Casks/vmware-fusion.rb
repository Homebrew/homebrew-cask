class VmwareFusion < Cask
  version '7.0.0-2103067'
  sha256 'eb0656024f65d53a29e82a957610b5d47cfbf07cdbe90d1a273a948b7cf24213'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  homepage 'http://www.vmware.com/products/fusion/'

  binary 'VMware Fusion.app/Contents/Library/vmrun'
  app 'VMware Fusion.app'
  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{destination_path}/VMware Fusion.app"
  end
end
