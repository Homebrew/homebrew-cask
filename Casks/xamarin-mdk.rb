cask 'xamarin-mdk' do
  version '4.8.0.524'
  sha256 'fa650e5570c36f04f54ac0193cf11a05487907d6397f8487fd370cc30f1ebc11'

  url "https://dl.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'c93e56fc4aef0c3daf9964c91543d76d9c68f557ad8b9e8254a9b11e66ed4bb8'
  name 'Xamarin Mono MDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
