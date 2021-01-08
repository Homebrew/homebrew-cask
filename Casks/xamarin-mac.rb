cask "xamarin-mac" do
  version "7.3.0.27"
  sha256 "0958c05aaba2b30f162a1b1941905e5bd3afd6d4fdd6a054490402ea0416dfa5"

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  name "Xamarin Mac"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://github.com/xamarin/xamarin-macios"
    strategy :git
    regex(/^xamarin-mac-(\d+(?:\.\d+)*)$/i)
  end

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
