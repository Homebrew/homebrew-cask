cask 'xamarin-mac' do
  version '3.4.0.33'
  sha256 'bc0663d9008fb7d3cfd3d97b25d85e1560e95a5fab0c58769d7f3d9ac72acd7e'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast "http://xamarin.com/installer_assets/v#{version.major}/vsmac/Mac/Universal/InstallationManifest.xml",
          checkpoint: 'c17b5a408828e2e679f7f61af6fea816dbe502d2426592e33515c0db2501e649'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
