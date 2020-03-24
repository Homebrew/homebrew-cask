cask 'xamarin-ios' do
  version '13.10.0.21'
  sha256 '0b05fcb5ca62b6580776094cb7c7280205772b7116d64422745724d184abd722'

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
