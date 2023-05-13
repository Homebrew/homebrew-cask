cask "xamarin-mac" do
  version "9.1.0.5,5f9ea8f6-0afe-46b3-b8e8-5dee4c2dd14c,c5c4f99a992a8cc51b2bad3d31ef6b96"
  sha256 "50bfdcaab92415c9b08c127006f036e4ed967b0ca4ce6a7869536dd2dd51d2f8"

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
