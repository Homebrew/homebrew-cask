cask 'xamarin-android' do
  version '7.2.0-7'
  sha256 '6cc801a5a43a5ae21aad4e25686ebdb6d42f0048a52f3a8cc898c06f7f55d452'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'c93e56fc4aef0c3daf9964c91543d76d9c68f557ad8b9e8254a9b11e66ed4bb8'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
