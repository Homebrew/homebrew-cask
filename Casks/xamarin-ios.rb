cask "xamarin-ios" do
  version "16.4.0.6,b4928191-de3d-42cb-a24f-709e5d71626c,ac849f1f644aee58ed4e7a79cb35a14e"
  sha256 "1266b991cb5bf2f9ebcca7c79d5d1d9d702cd76ca2b135a43949d6235f8d1a46"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/xamarin.ios-#{version.csv.first}.pkg"
  name "Xamarin.iOS"
  desc "Gives .NET developers complete access to iOS, watchOS, and tvOS SDK's"
  homepage "https://dotnet.microsoft.com/en-us/apps/xamarin"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pv4569c276-1397-4adb-9485-82a7696df22e=0"
    regex(%r{/download/pr/([^/]+)/([^/]+)/xamarin[._-]ios[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2]},#{match[0]},#{match[1]}"
      end
    end
  end

  pkg "xamarin.ios-#{version.csv.first}.pkg"

  uninstall pkgutil: [
    "com.xamarin.xamarin.ios.pkg",
    "com.xamarin.xamarin-ios-build-host.pkg",
    "com.xamarin.monotouch.pkg",
  ]

  zap trash: [
    "/Developer/MonoTouch",
    "/Library/Frameworks/Xamarin.iOS.framework",
  ]
end
