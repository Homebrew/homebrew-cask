cask "xamarin-mac" do
  version "9.3.0.18,8cbf56b1-ef0d-466f-8cfe-fae4ba8c5080,afd720a8aaa6ec1d4d27ddf0c653a9c1"
  sha256 "865f84c42c42ed1bea6fb8185cb4b8c564bbfb05904de0270f84c256b23a3308"

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

  zap trash: "~/Library/Caches/com.xamarin.fontconfig"
end
