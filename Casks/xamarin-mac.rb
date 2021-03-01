cask "xamarin-mac" do
  version "7.4.0.10"
  sha256 "4fd76a2686bfdda62911f80faa6d214912e50464f82c295eddac6b517652d8a4"

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
