cask 'xamarin-android' do
  version '6.0.0-34'
  sha256 'c4164f0d6bd59cfd954c7a6ff5812775f6553883777c3f9e12b69ca4b9765b45'

  url "https://download.xamarin.com/MonoforAndroid/Mac/mono-android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '9fd357039968b833cd2b2e0f0acd276a8eb30059a240765f4a18d5045565f704'
  name 'Xamarin.Android'
  homepage 'https://xamarin.com/android'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "mono-android-#{version}.pkg"

  uninstall :pkgutil => 'com.xamarin.android.pkg'
end
