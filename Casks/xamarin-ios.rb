cask 'xamarin-ios' do
  version '11.3.0.47'
  sha256 '94da4adb80f1bf1ad32fb563cfe7ce2fefef442a9107a0a13e05685f2a4875ab'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '4d2c09da5055d15e0e1bc3c90f608491c170b8dcac80ed9af3fc6a9d56651829'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
