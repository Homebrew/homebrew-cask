cask 'xamarin-mdk' do
  version '4.2.3.4'
  sha256 '5e1caca94028be1c7416dd03b999fbf40b6808cf966cd7afa3dcb85cfb29b65f'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '14727c4cd976ca3d96a7a9c362bebd064a49c4f24d32296d33767e3a76b4a685'
  name 'Xamarin Mono MDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
