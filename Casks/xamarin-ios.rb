cask 'xamarin-ios' do
  version '9.4.2.27'
  sha256 'dada882b89c2a6a72b8bf4a2f44357078c67ad516fe4d8e24a0ee5e907c32e6a'

  url "https://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '14727c4cd976ca3d96a7a9c362bebd064a49c4f24d32296d33767e3a76b4a685'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "monotouch-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.monotouch.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
