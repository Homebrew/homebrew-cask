cask "xamarin-mac" do
  version "7.8.2.5"
  sha256 "e9a18b9875ce4abc5401613c1afe4719496024da14ac51bd5fb312fd16ec3c1e"

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
