cask "xamarin-ios" do
  version "14.4.1.3"
  sha256 "4311915cf08f510759b3029e36dc3bc81871418bcb4ad85eefe159cd6d3d3fea"

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
