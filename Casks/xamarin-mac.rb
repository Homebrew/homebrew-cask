cask 'xamarin-mac' do
  version '4.6.0.14'
  sha256 '4ee0620c5902918c9b7d3287d76a8962aa750a6406025b5cffd8958c4bbb84d7'

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v4/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin Mac'
  homepage 'https://www.xamarin.com/platform'

  depends_on cask: 'mono-mdk'

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: [
                       "xamarin.mac-#{version}.pkg",
                       "xamarin.mac-uninstall-#{version}.pkg",
                     ]
end
