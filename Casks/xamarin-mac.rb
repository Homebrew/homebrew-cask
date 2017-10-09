cask 'xamarin-mac' do
  version '3.8.0.49'
  sha256 '4b3d236df92979f969fd04bd666719d4f591f84e562c7a0976cfbdc50ae16a02'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '796e78c229d3accc035db4eb28032362cd75666b907f0b8eb8169b00c883dd41'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
