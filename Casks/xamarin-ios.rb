cask 'xamarin-ios' do
  version '10.0.1.8'
  sha256 'f8c1962fd0bc2d66ff9e0a9d6851ad0d1c2f56aa06322581a92d4a4dc631de26'

  url "https://download.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '00b79aa8567cd5acabbe285e2b09fe0765df2def16a111c8c757015aff57d21e'
  name 'Xamarin.iOS'
  homepage 'https://xamarin.com/ios'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                     ]
end
