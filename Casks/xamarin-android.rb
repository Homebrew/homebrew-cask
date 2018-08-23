cask 'xamarin-android' do
  version '9.0.0-18'
  sha256 '9c8a13c1edfd7cf3684136e6ae8bf172c1d2bbfa4b6233a265b1bbc164e95d3e'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v4/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
