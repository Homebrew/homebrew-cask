cask 'xamarin-mdk' do
  version '4.8.0.520'
  sha256 'e9c8e8b534cf7bd411b37700389fcea5b5f06dac5b30345e9f58e8b95093fa01'

  url "https://dl.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '1c931d41a49d507e4519cc22d207a8e96601f9ae17d8497fb05f0183ba0ef26c'
  name 'Xamarin Mono MDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
