cask 'xamarin-android' do
  version '10.1.3.7'
  sha256 '645144c04104585020b658778ee5d912f75325cc4b7ae3e112003f6091a7c94e'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/android/release-notes/',
          configuration: version.major_minor
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
