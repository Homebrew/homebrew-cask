cask 'xamarin-android' do
  version '7.2.0-7'
  sha256 '6cc801a5a43a5ae21aad4e25686ebdb6d42f0048a52f3a8cc898c06f7f55d452'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '4e35d027d98e8b3492711f22401b344615d6f1478b66c833055cccfd00681fbb'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
