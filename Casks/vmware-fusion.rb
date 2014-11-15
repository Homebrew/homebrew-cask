cask :v1 => 'vmware-fusion' do
  version '7.0.1-2235595'
  sha256 '212e25cefe3a30f0ab0ffe5975566bcc63422d370f6b647b83b4084524f36970'

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
