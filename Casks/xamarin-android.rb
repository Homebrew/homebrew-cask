cask :v1 => 'xamarin-android' do
  version '6.0.0-34'
  sha256 'c4164f0d6bd59cfd954c7a6ff5812775f6553883777c3f9e12b69ca4b9765b45'

  url "https://download.xamarin.com/MonoforAndroid/Mac/mono-android-#{version}.pkg"
  name 'Xamarin.Android'
  appcast 'https://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '79c309d6dbe6f08f1d022c9376a4678cc94f57be084007df90c5a12839b35cdd',
          :format => :unknown
  homepage 'https://xamarin.com/android'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "mono-android-#{version}.pkg"

  uninstall :pkgutil => 'com.xamarin.android.pkg'
end
