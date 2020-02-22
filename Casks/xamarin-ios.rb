cask 'xamarin-ios' do
  version '13.14.1.30'
  sha256 'bfe310c83b844e77f3c02e767cd31e8fd3660bdb8c259d9c3af8b1eb8044a884'

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
