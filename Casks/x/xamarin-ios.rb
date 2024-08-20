cask "xamarin-ios" do
  version "16.4.0.23,ceb0ea3f-4db8-46b4-8dc3-8049d27c0107,3960868aa9b1946a6c77668c3f3334ee"
  sha256 "3c3a2e3c5adebf7955934862b89c82e4771b0fd44dfcfebad0d160033a6e0a1a"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/xamarin.ios-#{version.csv.first}.pkg"
  name "Xamarin.iOS"
  desc "Gives .NET developers complete access to iOS, watchOS, and tvOS SDK's"
  homepage "https://dotnet.microsoft.com/en-us/apps/xamarin"

  deprecate! date: "2024-08-20", because: :discontinued

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
