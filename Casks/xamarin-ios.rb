cask 'xamarin-ios' do
  version '9.4.1.25'
  sha256 'b47d0e42bebfc02e7c85d7cedbedbe83d31af9d8b90d38839c745c98fde2c4ab'

  url "https://download.xamarin.com/MonoTouch/Mac/monotouch-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '855d95a330efdd9cc13cbaabc6e49dfcda111db3b16cbc6345e3a0d17e769972'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "monotouch-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.monotouch.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
