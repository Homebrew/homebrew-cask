cask "xamarin-mac" do
  version "7.10.0.5"
  sha256 "d29cef50d1bf817d332af6bbbeb6f2d4f0cb92e642eaaf419ce26b3f82355a60"

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  name "Xamarin Mac"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pv0ab364ff-c0e9-43a8-8747-3afb02dc7731=0"
    strategy :page_match
    regex(%r{/xamarin\.mac-(\d+(?:\.\d+)*)\.pkg}i)
  end

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
