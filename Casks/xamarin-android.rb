cask 'xamarin-android' do
  version '7.0.1-2'
  sha256 'bdfc95724b83a12e1bfb9c0c8ad98f24bc92bf794f5c1113a2eb83a2e539776e'

  url "https://download.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '00b79aa8567cd5acabbe285e2b09fe0765df2def16a111c8c757015aff57d21e'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
