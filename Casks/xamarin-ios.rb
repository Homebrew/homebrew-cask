cask 'xamarin-ios' do
  version '13.18.1.31'
  sha256 '1fc2e761d923578a73b614145ed30ecac3b6b6807a54f3e617576c15d731758e'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://docs.microsoft.com/en-us/xamarin/ios/release-notes/',
          configuration: version.major_minor
  name 'Xamarin.iOS'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
                       'com.xamarin.xamarin.ios.pkg',
                       'com.xamarin.xamarin-ios-build-host.pkg',
                       'com.xamarin.monotouch.pkg',
                     ]

  zap trash: [
               '/Developer/MonoTouch',
               '/Library/Frameworks/Xamarin.iOS.framework',
             ]
end
