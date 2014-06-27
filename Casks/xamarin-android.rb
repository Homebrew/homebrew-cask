class XamarinAndroid < Cask
  version '4.12.3-3'
  sha256 'e32095f71cd6bdfa190f3f1bc3a8b31d460c7f6845bfed6b851af10c1e0cfe58'

  url 'http://download.xamarin.com/MonoforAndroid/Mac/mono-android-4.12.3-3.pkg'
  homepage 'http://xamarin.com/android'

  install 'mono-android-4.12.3-3.pkg'
  uninstall :pkgutil => 'com.xamarin.android.pkg'
end
