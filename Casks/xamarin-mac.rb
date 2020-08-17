cask "xamarin-mac" do
  version "6.20.2.2"
  sha256 "47f6d7a00a9519a5b52956230f955f2dce0ec313b5d8c29e19b55d6599c144c6"

  url "https://dl.xamarin.com/XamarinforMac/Mac/xamarin.mac-#{version}.pkg"
  appcast "https://github.com/xamarin/xamarin-macios/releases.atom"
  name "Xamarin Mac"
  homepage "https://www.xamarin.com/platform"

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
