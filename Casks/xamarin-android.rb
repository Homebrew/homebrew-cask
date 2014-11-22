cask :v1 => 'xamarin-android' do
  version '4.18.0-34'
  sha256 '012f7266b123a1cc8cc189db8c3aea24c5daa8912df684525336fabc86e279e7'

  url "http://download.xamarin.com/MonoforAndroid/Mac/mono-android-#{version}.pkg"
  appcast 'http://xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          :sha256 => '713f272a1e36262f1b2c5a06f4ed1b1eb8987d240018347a51312dfedeeafcf3',
          :format => :unknown
  homepage 'http://xamarin.com/android'
  license :unknown

  pkg "mono-android-#{version}.pkg"

  uninstall :pkgutil => 'com.xamarin.android.pkg'
end
