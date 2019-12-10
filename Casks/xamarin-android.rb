cask 'xamarin-android' do
  version '10.0.6.2'
  sha256 'f92cb88ae9f862e155a319e3842364dbb4d529e2014007bac313724c6c36ea00'

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
