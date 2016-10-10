cask 'xamarin-mdk' do
  version '4.6.1.3'
  sha256 'a71d3bb4f6954d77588835a913f30779407602cd1e2709fa3463f1b569fb4c3d'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '00b79aa8567cd5acabbe285e2b09fe0765df2def16a111c8c757015aff57d21e'
  name 'Xamarin Mono MDK'
  homepage 'https://xamarin.com/platform'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
