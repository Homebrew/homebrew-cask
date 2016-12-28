cask 'xamarin-android' do
  version '7.0.2-42'
  sha256 'ceae827c62f477e921d93862ec3e7c151d320dc708230d62001141564b3d56cd'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '48d144620a3f8785b258c63ee2fb7e75a97b40ad3bfb947a74b914440df16422'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
