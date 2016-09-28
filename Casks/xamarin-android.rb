cask 'xamarin-android' do
  version '7.0.0-18'
  sha256 '9566f93a933b1bc0fb5b259d688e6e88c399192b09b66c372b1ce1866caaa6da'

  url "https://download.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'b3b4ad91917a09091c1fee7f5aa71bab10c1c8cee5e5f2cbcdbb50e86ac31ac9'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
