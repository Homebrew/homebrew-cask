cask 'xamarin-ios' do
  version '9.8.2.22'
  sha256 'f67eef6234a7e53cda3bf716e36166d5ecc226425de4b66177a5acbb1a5fab03'

  url "https://download.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '773227b41218a95c3404b764d09eed828cc248aa4bb3aaabbe75c6ad95022b22'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
