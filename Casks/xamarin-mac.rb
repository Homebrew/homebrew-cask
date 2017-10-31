cask 'xamarin-mac' do
  version '3.8.1.0'
  sha256 '56f6a54b3df7fc0c27293fc19e738596a9a7ee25fb2fce0326a84ed7019e9e83'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'baafed12ce3818833dbae144410143f428b4719b117fe33ec6634653d3762630'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
