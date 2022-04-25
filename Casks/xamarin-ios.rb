cask "xamarin-ios" do
  version "15.8.0.3"
  sha256 "b0c81a81df01795c9e2f39341ae9789e2c01f6919b4b52dc0e7f67f85d50b3ff"

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  name "Xamarin.iOS"
  desc "Gives .NET developers complete access to iOS, watchOS, and tvOS SDK's"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pv4569c276-1397-4adb-9485-82a7696df22e=0"
    regex(%r{/xamarin\.ios[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
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
