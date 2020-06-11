cask 'xamarin-android' do
  version '10.3.1.4'
  sha256 '1ee7fe2568dc8682f29c61ce3ea54ddb1d632612898d7464d0208f3e40ad76e4'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/android/release-notes/',
          must_contain: version.major_minor
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
