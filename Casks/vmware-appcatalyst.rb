cask 'vmware-appcatalyst' do
  version :latest
  sha256 'b8b99200e849079bbce4f8760950d6c4807d51a8c78ccccaca2bc3e04f467ddc'

  url "http://getappcatalyst.com/downloads/VMware-AppCatalyst-Technical-Preview-Update.dmg"
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
