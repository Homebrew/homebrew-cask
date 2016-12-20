cask 'xamarin-ios' do
  version '10.3.0.0'
  sha256 'adbc32b05dd060745214921ccd01a13fb295faef702a020f47013acfc9248100'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '48d144620a3f8785b258c63ee2fb7e75a97b40ad3bfb947a74b914440df16422'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
