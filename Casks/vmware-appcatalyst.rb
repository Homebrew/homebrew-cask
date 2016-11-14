cask 'vmware-appcatalyst' do
  version 'Update' # June-2016
  sha256 '6ed3d6d6fc2ff54105eccf3435c316b728fa5da8'

  url "http://getappcatalyst.com/downloads/VMware-AppCatalyst-Technical-Preview-#{version}.dmg"
  name 'VMware AppCatalyst'
  homepage 'http://getappcatalyst.com/'

  depends_on macos: '>= :mavericks'

  pkg 'Install VMware AppCatalyst.pkg'
  binary '/opt/vmware/appcatalyst/bin/appcatalyst'
  binary '/opt/vmware/appcatalyst/bin/appcatalyst-daemon'
  binary '/opt/vmware/appcatalyst/libexec/vmware-vdiskmanager'
  binary '/opt/vmware/appcatalyst/libexec/vmnet-cli'
  binary '/opt/vmware/appcatalyst/libexec/vmnet-cfgcli'

  uninstall pkgutil: 'com.vmware.pkg.AppCatalyst'

  zap delete: [
                '~/.appcatalyst.conf',
                '~/Library/Logs/VMware',
              ]
end
