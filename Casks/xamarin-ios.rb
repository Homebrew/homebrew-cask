cask 'xamarin-ios' do
  version '11.14.0.13'
  sha256 '1150af2c81c1614e542560801d1a74144e23547d0c1164460459fe706e8cbecb'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v4/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
