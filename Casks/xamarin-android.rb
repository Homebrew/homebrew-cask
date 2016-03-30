cask 'xamarin-android' do
  version '6.0.2-1'
  sha256 '2f6425b2dc808cd9cd044b3b5ba2e2026d5a97dd47efbf0eba319280c4b8cac3'

  url "https://download.xamarin.com/MonoforAndroid/Mac/mono-android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '14727c4cd976ca3d96a7a9c362bebd064a49c4f24d32296d33767e3a76b4a685'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "mono-android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
