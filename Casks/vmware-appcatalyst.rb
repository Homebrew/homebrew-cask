cask 'vmware-appcatalyst' do
  version 'August-2015'
  sha256 '343e6259ee4f60e5c077a080d5d3a550ea105d25c6e2762c2eaa151820c8a4dd'

  url "http://getappcatalyst.com/downloads/VMware-AppCatalyst-Technical-Preview-#{version}.dmg"
  name 'VMware AppCatalyst'
  homepage 'http://getappcatalyst.com/'
  license :commercial

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
