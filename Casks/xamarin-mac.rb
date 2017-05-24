cask 'xamarin-mac' do
  version '3.4.0.36'
  sha256 'e26a80365b60ef38b5815bdfbea3fc60cba98ae11e6e0822f3c37707d63978ce'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast "http://xamarin.com/installer_assets/v#{version.major}/vsmac/Mac/Universal/InstallationManifest.xml",
          checkpoint: '2adcc7a40fa47b7ac33576ffcf44ff529fbd853f49c2e5806f7c34c5cb07b338'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
