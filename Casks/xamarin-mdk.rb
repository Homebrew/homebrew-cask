cask 'xamarin-mdk' do
  version '4.4.1.0'
  sha256 '451602bbb5f06442c4fc11d8593ebc3904a814260bba312a033ef31395459491'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '2cb6260bf1f5348e125fe9cab2effe9862fe76f0706f146dd91c827827cdda6b'
  name 'Xamarin Mono MDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
