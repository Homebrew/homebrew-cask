cask 'vmware-appcatalyst' do
  version :latest
  sha256 :no_check

  # getappcatalyst.com/downloads was verified as official when first introduced to the cask
  url 'http://getappcatalyst.com/downloads/VMware-AppCatalyst-Technical-Preview-Update.dmg'
  name 'VMware AppCatalyst'
  homepage 'https://www.vmware.com/cloudnative/appcatalyst-download.html'

  depends_on macos: '>= :mavericks'

  pkg 'Install VMware AppCatalyst.pkg'
  binary '/opt/vmware/appcatalyst/bin/appcatalyst'
  binary '/opt/vmware/appcatalyst/bin/appcatalyst-daemon'
  binary '/opt/vmware/appcatalyst/libexec/vmware-vdiskmanager'
  binary '/opt/vmware/appcatalyst/libexec/vmnet-cli'
  binary '/opt/vmware/appcatalyst/libexec/vmnet-cfgcli'

  uninstall pkgutil: 'com.vmware.pkg.AppCatalyst'

  zap trash: [
               '~/.appcatalyst.conf',
               '~/Library/Logs/VMware',
             ]
end
