cask 'xamarin-ios' do
  version '10.4.0.123'
  sha256 'a836f786fa48bcaaaa72aa9bf55d9742732ead4918fcc43e0663b636eb8a69b6'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '16d648bbecc3ec71d375dbbd193ee0f7a8116c562fedefa9c050f2fac1b4726d'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
