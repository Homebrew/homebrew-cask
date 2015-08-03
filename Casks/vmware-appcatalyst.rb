cask :v1 => 'vmware-appcatalyst' do
  version :latest
  sha256 :no_check

  url 'http://download3.vmware.com/cloudnative/VMware-AppCatalyst-Technical-Preview.dmg'
  name 'VMware AppCatalyst'
  homepage 'https://communities.vmware.com/community/vmtn/devops/vmware-appcatalyst'
  license :commercial
  tags :vendor => 'VMware'

  pkg 'Install VMware AppCatalyst.pkg'
  binary '/opt/vmware/appcatalyst/bin/appcatalyst'
  binary '/opt/vmware/appcatalyst/bin/appcatalyst-daemon'
  binary '/opt/vmware/appcatalyst/libexec/vmware-vdiskmanager'
  binary '/opt/vmware/appcatalyst/libexec/vmnet-cli'
  binary '/opt/vmware/appcatalyst/libexec/vmnet-cfgcli'

  uninstall :pkgutil => 'com.vmware.pkg.AppCatalyst'

  zap :delete => [
                  # note: '~/Documents/AppCatalyst' is not safe to delete. VM
                  # images were located there.
                  '~/.appcatalyst.conf',
                  '~/Library/Logs/VMware',
                 ]
end
