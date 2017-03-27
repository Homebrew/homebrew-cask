cask 'xamarin-android' do
  version '7.1.0-43'
  sha256 'a57322cb2d064f7ae3ef137b0f9c5d2c42db6756d58e9b1e58777d846cb69dd2'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '1c931d41a49d507e4519cc22d207a8e96601f9ae17d8497fb05f0183ba0ef26c'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
