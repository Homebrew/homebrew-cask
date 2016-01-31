cask 'xamarin-ios' do
  version '9.4.1.24'
  sha256 'ae740f835ac963fab80858fddbd382c5f4b747352180782da1d09aec6a9316f6'

  url "https://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477b5e7a151c72b77987ea715278ff32bf7139a1829ff4deb20e67e2d35c7dd3'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "monotouch-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.monotouch.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
