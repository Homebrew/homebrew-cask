cask 'xamarin-android' do
  version '6.0.1-10'
  sha256 'f382f4a8aa5f505c4a7978084fe425b0af5ec10ec0426b3601828e0e813f406d'

  url "https://download.xamarin.com/MonoforAndroid/Mac/mono-android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '855d95a330efdd9cc13cbaabc6e49dfcda111db3b16cbc6345e3a0d17e769972'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "mono-android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
