cask 'xamarin-ios' do
  version '13.18.3.2'
  sha256 '05a63266f96323c9e614f6047ac59d8579ec860b1e9b059ff3e10e15a8b46127'

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast 'https://github.com/xamarin/xamarin-macios/releases.atom'
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
