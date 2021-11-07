cask "xamarin-mac" do
  version "7.14.0.27"
  sha256 "55d544e46c8da1002a411a62d62dc4cbfe6ebd4571ff54e5896189beaffd9881"

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  name "Xamarin Mac"
  desc "Gives C# and .NET developers access to Objective-C and Swift API's"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pv0ab364ff-c0e9-43a8-8747-3afb02dc7731=0"
    regex(%r{/xamarin\.mac[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
