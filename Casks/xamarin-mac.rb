cask "xamarin-mac" do
  version "7.0.0.15"
  sha256 "cd528ba6226763768b741584f5ff6495e361f092dfa56306b4169162eb32b5c1"

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast "https://github.com/xamarin/xamarin-macios/releases.atom"
  name "Xamarin Mac"
  homepage "https://www.xamarin.com/platform"

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
