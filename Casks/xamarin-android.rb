cask 'xamarin-android' do
  version '7.0.2-38'
  sha256 '778a09fce75d8c823a8f0cd0e5b8cd932300be0a20b8f3c829aa4b17fe880bf7'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '48d144620a3f8785b258c63ee2fb7e75a97b40ad3bfb947a74b914440df16422'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
