cask :v1 => 'vmware-fusion' do
  version '7.1.0-2314774'
  sha256 'e51a93e2f2cc6499f4dcd1d32db33fcbb20f17fb73caff2a2b2cbe50f25272b5'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  homepage 'http://www.vmware.com/products/fusion/'
  license :commercial

  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool'
  app 'VMware Fusion.app'

  uninstall_preflight do
    system '/usr/bin/sudo', '-E', '--',
           '/usr/sbin/chown', '-R', '--', "#{Etc.getpwuid(Process.euid).name}:staff", "#{staged_path}/VMware Fusion.app"
  end

  zap :delete => [
                  # note: '~/Library/Application Support/VMware Fusion' is not safe
                  # to delete.  In older versions, VM images were located there.
                  '~/Library/Caches/com.vmware.fusion',
                  '~/Library/Logs/VMware',
                  '~/Library/Logs/VMware Fusion',
                 ]
end
