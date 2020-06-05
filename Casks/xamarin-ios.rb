cask 'xamarin-ios' do
  version '13.18.2.1'
  sha256 '7dcbf386f6c8695ca2fa52c3a91fcdd1040da2903879da8ffb3b9695831e45b0'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://github.com/xamarin/xamarin-macios/releases',
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
