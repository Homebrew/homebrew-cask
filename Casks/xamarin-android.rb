cask 'xamarin-android' do
  version '8.1.0-24'
  sha256 'c054680004907d38302b071edcc4e82b652ad9b1e3456e9995629cea63308614'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '7cff51bb6b9eb86014ab5f0f12cd3d01b301b5548fbba9e575d016d91fc1f553'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
