cask 'xamarin-ios' do
  version '10.4.0.128'
  sha256 '78a9c925f52dfe4e9fe4f7baff9d8db14d0c5cea8cfda9737670ceb38341da4d'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '08fff1d7a6a76fad3c5bddf85eac1be682963000aff8a1c355284dd7361fd02d'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
