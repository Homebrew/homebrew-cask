cask 'xamarin-mdk' do
  version '5.0.0.100'
  sha256 '66398a86a7d7daf1a79ff940a5562c8386f48d7f40693e7936cbb356cf855e1f'

  url "https://dl.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477c85901ee0146c2f34467c8cfc1f3a94bcb96c5467bb8b5cfc1ed765b3676e'
  name 'Xamarin Mono MDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
