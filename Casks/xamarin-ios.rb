cask 'xamarin-ios' do
  version '10.6.0.10'
  sha256 '20f629439318af224e825f5c4d4cd9b12dee40650612e17b933d8c0aceaaf33e'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '63a00317bbfe1a2ff58f7855c1dce536f34fa46f7e06c8003e854e225b8d1170'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
