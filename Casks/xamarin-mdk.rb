cask 'xamarin-mdk' do
  version '4.2.2.30'
  sha256 '28592908d114f5cd19f7fd2cdf1e7945401c4e2ce72e929fe19a89a671e27969'

  url "https://download.xamarin.com/MonoFrameworkMDK/Macx86/MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477b5e7a151c72b77987ea715278ff32bf7139a1829ff4deb20e67e2d35c7dd3'
  name 'Xamarin Mono MDK'
  homepage 'https://xamarin.com/platform'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.x86.pkg"

  uninstall pkgutil: 'com.xamarin.mono-MDK.pkg'
end
