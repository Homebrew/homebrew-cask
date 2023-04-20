cask "xamarin-ios" do
  version "16.2.0.5,5f9ea8f6-0afe-46b3-b8e8-5dee4c2dd14c,b357a2b833ba86598aaff58fc013f06c"
  sha256 "3b80b85360827b891a9844ff54c170fe826f88672333ca515fa7c20053bd7ffd"

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
