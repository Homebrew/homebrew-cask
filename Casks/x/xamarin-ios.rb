cask "xamarin-ios" do
  version "16.4.0.23,ceb0ea3f-4db8-46b4-8dc3-8049d27c0107,3960868aa9b1946a6c77668c3f3334ee"
  sha256 "3c3a2e3c5adebf7955934862b89c82e4771b0fd44dfcfebad0d160033a6e0a1a"

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
    "com.xamarin.monotouch.pkg",
    "com.xamarin.xamarin-ios-build-host.pkg",
    "com.xamarin.xamarin.ios.pkg",
  ]

  zap trash: [
    "/Developer/MonoTouch",
    "/Library/Frameworks/Xamarin.iOS.framework",
  ]
end
