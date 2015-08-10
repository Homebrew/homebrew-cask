cask :v1 => 'xamarin-mdk' do
  version '4.0.2.5'
  sha256 '5b8c4a9fee009a644769a88ab480aa3032fda9777df043543d8df5f430fc491d'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  name 'Xamarin Mono MDK'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/platform'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
