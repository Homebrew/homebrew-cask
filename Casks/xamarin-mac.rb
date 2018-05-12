cask 'xamarin-mac' do
  version '4.2.1.29'
  sha256 'bc834bc7e07b8b689d57c34b374cfe5105549a5f49712a9681cbcc5ebd46b330'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '0ce41f30dfa6fddbe9f848145061b96f9e6293b9e6325b114547946b68eb293f'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
