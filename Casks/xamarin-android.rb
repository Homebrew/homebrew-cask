cask 'xamarin-android' do
  version '10.0.6.2'
  sha256 'b2c7b4bcc0e8caed9e43cfd066284ceebaa4b730091fda07a72090ba9356ed1d'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://github.com/xamarin/xamarin-android/releases.atom'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'

  zap trash: [
               '/Developer/MonoAndroid',
               '/Library/Frameworks/Xamarin.Android.framework',
               '~/Library/Caches/Xamarin.Android',
               '~/Library/Caches/XamarinBuildDownload',
             ]
end
