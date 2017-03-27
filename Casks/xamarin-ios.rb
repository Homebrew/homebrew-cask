cask 'xamarin-ios' do
  version '10.4.0.128'
  sha256 '78a9c925f52dfe4e9fe4f7baff9d8db14d0c5cea8cfda9737670ceb38341da4d'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '1c931d41a49d507e4519cc22d207a8e96601f9ae17d8497fb05f0183ba0ef26c'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
