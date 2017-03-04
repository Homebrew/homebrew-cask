cask 'xamarin-mdk' do
  version '4.8.0.495'
  sha256 '09c2e30fb32112d3f4b1e5329119357e5728b08ba8131bbbc643d8adb9456522'

  url "https://dl.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '16d648bbecc3ec71d375dbbd193ee0f7a8116c562fedefa9c050f2fac1b4726d'
  name 'Xamarin Mono MDK'
  homepage 'https://www.xamarin.com/platform'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
