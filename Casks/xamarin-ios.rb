cask 'xamarin-ios' do
  version '10.10.0.11'
  sha256 '2db8de7902ebfe0da7e94fed39de6c3e3d1dc5338749034db46213cdc27c355a'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://static.xamarin.com/installer_assets/v3/Mac/Universal/InstallationManifest.xml',
          checkpoint: '477c85901ee0146c2f34467c8cfc1f3a94bcb96c5467bb8b5cfc1ed765b3676e'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]
end
