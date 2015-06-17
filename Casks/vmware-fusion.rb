cask :v1 => 'vmware-fusion' do
  version '7.1.2-2779224'
  sha256 '93e809ece4f915fcb462affabfce2d7c85eb08314b548e2cde44cb2a67ad7d76'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'http://www.vmware.com/products/fusion/'
  license :commercial
  tags :vendor => 'VMware'

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
