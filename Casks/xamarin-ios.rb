cask "xamarin-ios" do
  version "14.9.0.27"
  sha256 "3143fde70555ba33db7e082a0426e29ee7f317cbdf5c4b22ca647f3669aa01ec"

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  name "Xamarin.iOS"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://github.com/xamarin/xamarin-macios"
    strategy :git
    regex(/^xamarin-ios-(\d+(?:\.\d+)*)$/i)
  end

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
