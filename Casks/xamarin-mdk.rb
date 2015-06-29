cask :v1 => 'xamarin-mdk' do
  version '3.12.0'
  sha256 '9591affdb4a342cbba3da0a1d7013592f1c801e2deb7eb70ec9cc1545dda468a'

  url 'https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-3.12.0.68.macos10.xamarin.x86.pkg'
  name 'Xamarin Mono MDK'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/platform'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'MonoFramework-MDK-3.12.0.68.macos10.xamarin.x86.pkg'

  uninstall :pkgutil => 'com.xamarin.mono-MDK.pkg'
end
