cask 'xamarin-mdk' do
  version '4.0.2.5'
  sha256 '5b8c4a9fee009a644769a88ab480aa3032fda9777df043543d8df5f430fc491d'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '9fd357039968b833cd2b2e0f0acd276a8eb30059a240765f4a18d5045565f704'
  name 'Xamarin Mono MDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
