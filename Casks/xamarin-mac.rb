cask "xamarin-mac" do
  version "9.3.0.6,b4928191-de3d-42cb-a24f-709e5d71626c,586143733de41c62d8b6179d7eeaf3e5"
  sha256 "2fb94ef86efff8f4a523db652eeaca9cc46dcabd5e426889c094907185045a80"

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
