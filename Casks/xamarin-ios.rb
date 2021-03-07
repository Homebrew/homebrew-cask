cask "xamarin-ios" do
  version "14.14.2.5"
  sha256 "16386df92c7658aa91ae33c9a21b5be3fce523e052d5bb5a258786bd9a5e8d91"

  url "https://dl.xamarin.com/MonoTouch/Mac/xamarin.ios-#{version}.pkg"
  name "Xamarin.iOS"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pv4569c276-1397-4adb-9485-82a7696df22e=0"
    strategy :page_match
    regex(%r{/xamarin\.ios-(\d+(?:\.\d+)*)\.pkg}i)
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
