cask "xamarin-ios" do
  version "13.20.2.2"
  sha256 "20b2f82b14386723e0762d07020995fd635be7df0429fa3a6d47770cd1935902"

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  appcast "https://github.com/xamarin/xamarin-macios/releases.atom"
  name "Xamarin.iOS"
  homepage "https://www.xamarin.com/platform"

  pkg "xamarin.ios-#{version}.pkg"

  uninstall pkgutil: [
    "com.xamarin.xamarin.ios.pkg",
    "com.xamarin.xamarin-ios-build-host.pkg",
    "com.xamarin.monotouch.pkg",
  ]

  zap trash: [
    "/Developer/MonoTouch",
    "/Library/Frameworks/Xamarin.iOS.framework",
  ]
end
