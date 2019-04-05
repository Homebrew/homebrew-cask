cask 'xamarin-mac' do
  version '5.6.0.25'
  sha256 'b319c04ed3c0ab7542efe40846b8c45d20df3f21bd37c6b17e950f2a7083fbe2'

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
