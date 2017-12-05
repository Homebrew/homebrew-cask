cask 'xamarin-ios' do
  version '11.4.0.214'
  sha256 '44429b4a39636dadcfd3e7fed081d6cf1b7b0d1d7a362d09241b7258dbee9f93'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '7cff51bb6b9eb86014ab5f0f12cd3d01b301b5548fbba9e575d016d91fc1f553'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
