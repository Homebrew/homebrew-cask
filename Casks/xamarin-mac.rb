cask 'xamarin-mac' do
  version '3.4.0.33'
  sha256 'bc0663d9008fb7d3cfd3d97b25d85e1560e95a5fab0c58769d7f3d9ac72acd7e'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'http://xamarin.com/installer_assets/v3/vsmac/Mac/Universal/InstallationManifest.xml',
          checkpoint: '54618531df092f73e61a1658cfdaf83081edebaeb924a8d0d46ab022b46175dd'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
