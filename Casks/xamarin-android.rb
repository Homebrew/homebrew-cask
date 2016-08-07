cask 'xamarin-android' do
  version '6.1.1-1'
  sha256 'c89e6a390ef9d25e932b0cb4043831912cb67a1c335f19b7ddd654c8f2846c12'

  url "https://download.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '2cb6260bf1f5348e125fe9cab2effe9862fe76f0706f146dd91c827827cdda6b'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
