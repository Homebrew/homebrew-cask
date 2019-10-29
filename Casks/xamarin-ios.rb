cask 'xamarin-ios' do
  version '13.4.0.2'
  sha256 'c221fff73b8e01246f0a7c1b323f2f08dde82d030e54d9eb1a98565eb375e861'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v4/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                     ]

  zap trash: [
               '/Developer/MonoTouch',
               '/Library/Frameworks/Xamarin.iOS.framework',
             ]
end
