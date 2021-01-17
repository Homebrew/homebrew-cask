cask "xamarin-mac" do
  version "7.0.0.15"
  sha256 "cd528ba6226763768b741584f5ff6495e361f092dfa56306b4169162eb32b5c1"

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
