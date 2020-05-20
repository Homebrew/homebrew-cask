cask 'xamarin-android' do
  version '10.3.1.0'
  sha256 '93c3d3aa6de6ebde57f716e96a5c44c2a615365cd53dde17c5d0de647ec91899'

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
