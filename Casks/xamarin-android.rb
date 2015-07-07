cask :v1 => 'xamarin-android' do
  version '4.20.0-28'
  sha256 '3f38009ee76b54c7aca174ee0046c0e2aa5729c844739e863b7319f460dd428d'

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
