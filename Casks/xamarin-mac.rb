cask "xamarin-mac" do
  version "9.0.0.27,c8bc547f-869e-4d64-a271-f8b3a29ee545,4fbfc55453fe36fe5bf4128d6d495911"
  sha256 "996542292606cadb8b5b47f8fe5f78a31fde4e43184af29133d22cafda93549c"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/xamarin.mac-#{version.csv.first}.pkg"
  name "Xamarin Mac"
  desc "Gives C# and .NET developers access to Objective-C and Swift API's"
  homepage "https://dotnet.microsoft.com/en-us/apps/xamarin"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pv0ab364ff-c0e9-43a8-8747-3afb02dc7731=0"
    regex(%r{/download/pr/([^/]+)/([^/]+)/xamarin[._-]mac[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  pkg "xamarin.mac-#{version.csv.first}.pkg"

  uninstall pkgutil: "com.xamarin.mac-.*"
end
