cask 'xamarin-android' do
  version '7.1.0-41'
  sha256 'e263c5113742d919d05119489535b3990d77f927b6adb19775faa89658f0a846'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '16d648bbecc3ec71d375dbbd193ee0f7a8116c562fedefa9c050f2fac1b4726d'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'
end
