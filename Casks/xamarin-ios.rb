cask "xamarin-ios" do
  version "14.6.0.15"
  sha256 "1ed1eb8a0054d240298bb348f0373ced4ecd053f2dbb2b4998a2e5f40e4f7e47"

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
