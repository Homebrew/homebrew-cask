cask 'xamarin-mdk' do
  version '4.6.0.245'
  sha256 'c44cc7946c7d38b25351ae01786516a97e49970d72b7eccbffce8ed869e4862a'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b3b4ad91917a09091c1fee7f5aa71bab10c1c8cee5e5f2cbcdbb50e86ac31ac9'
  name 'Xamarin Mono MDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
