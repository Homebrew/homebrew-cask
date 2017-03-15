cask 'xamarin-mdk' do
  version '4.8.0.520'
  sha256 'e9c8e8b534cf7bd411b37700389fcea5b5f06dac5b30345e9f58e8b95093fa01'

  url "https://dl.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fff1d7a6a76fad3c5bddf85eac1be682963000aff8a1c355284dd7361fd02d'
  name 'Xamarin Mono MDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
