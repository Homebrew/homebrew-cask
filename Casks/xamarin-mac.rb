cask "xamarin-mac" do
  version "6.22.1.26"
  sha256 "428fc4be9b9353a041ac5de97fbdb6079c3fad88f33788e7407767d80eda8615"

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast "https://github.com/xamarin/xamarin-macios/releases.atom"
  name "Xamarin Mac"
  homepage "https://www.xamarin.com/platform"

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
