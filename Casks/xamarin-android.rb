cask 'xamarin-android' do
  version '10.1.1.0'
  sha256 '6a54bfa0a68bf0acb64fb25f70e236e65dd3a83fefb993f82510ba0bd2168e99'

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
