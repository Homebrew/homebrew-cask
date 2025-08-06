cask "xamarin-mac" do
  version "9.3.0.23,ceb0ea3f-4db8-46b4-8dc3-8049d27c0107,7b04843d469aae253519989fcb8e750f"
  sha256 "9aa89a4d273e5fc246f779db5d23907c414b98b76fe51e30cb60e8ccd1199956"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/xamarin.mac-#{version.csv.first}.pkg"
  name "Xamarin Mac"
  desc "Gives C# and .NET developers access to Objective-C and Swift API's"
  homepage "https://dotnet.microsoft.com/en-us/apps/xamarin"

  deprecate! date: "2024-08-20", because: :discontinued

  depends_on cask: "mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"

  zap trash: "~/Library/Caches/com.xamarin.fontconfig"
end
