cask 'xamarin-ios' do
  version '10.0.0.6'
  sha256 '61cc32323fe34afea594aecfa7a3fc54f715a6d669499ca79b857dcac1182d36'

  url "https://download.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b3b4ad91917a09091c1fee7f5aa71bab10c1c8cee5e5f2cbcdbb50e86ac31ac9'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
