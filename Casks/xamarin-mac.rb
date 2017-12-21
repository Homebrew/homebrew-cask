cask 'xamarin-mac' do
  version '4.0.0.214'
  sha256 'fd0f197d1289b7b1cee2addc0487d6b2aea7fc79464c0691e5d63c34082c5831'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '7cff51bb6b9eb86014ab5f0f12cd3d01b301b5548fbba9e575d016d91fc1f553'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
