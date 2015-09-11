cask :v1 => 'xamarin-android' do
  version '5.1.4-16'
  sha256 '9f21d240e2fc180b26b74b277e019379a78976e634195e383ff3ef64c565bbfc'

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
