cask 'xamarin-ios' do
  version '13.8.1.17'
  sha256 'a6e67a3d79e61553c3907f11ef88a355bf2af6d7a3fcb82ce66317db623fcad8'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/ios/release-notes/',
          configuration: version.major_minor
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
