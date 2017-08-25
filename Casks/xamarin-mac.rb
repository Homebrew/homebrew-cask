cask 'xamarin-mac' do
  version '3.6.0.19'
  sha256 'b8a206fe15f6bd71e27cf00f6adbc0cdfc3d636d31cdf7059872ba2f5418b535'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '21f7412cc871cceda8f7caf320f994a15cf1ee2f57865518ff9ed027bb76d604'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
