cask 'xamarin-ios' do
  version '10.8.0.175'
  sha256 'd5bb5172640dd3ce660d8142c591d1055ec577a1656a6d90abc0a1b9ee3ae957'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: 'c93e56fc4aef0c3daf9964c91543d76d9c68f557ad8b9e8254a9b11e66ed4bb8'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
