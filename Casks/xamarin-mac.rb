cask "xamarin-mac" do
  version "7.2.0.3"
  sha256 "96f6b83cc727304d3f2681c9002038d4a9924ac50d6a529ae6c0de976d60ce5e"

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
