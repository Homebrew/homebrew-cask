cask 'xamarin-android' do
  version '6.1.2-21'
  sha256 'bd1c37bb2dff6ad0056351e1faef1519d30bf96a1575ce292a5da28e719fc578'

  url "https://download.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '773227b41218a95c3404b764d09eed828cc248aa4bb3aaabbe75c6ad95022b22'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
