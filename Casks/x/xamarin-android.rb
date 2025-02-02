cask "xamarin-android" do
  version "13.2.2.0,8cbf56b1-ef0d-466f-8cfe-fae4ba8c5080,e9e853fee3169b1c5128098942f19120"
  sha256 "aeb215d33324f8d8dbf41aae2a987249433a7a4c264588384a40695c162877f4"

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/xamarin.android-#{version.csv.first}.pkg",
      verified: "download.visualstudio.microsoft.com/download/pr/"
  name "Xamarin.Android"
  desc "Gives .NET developers complete access to Android SDK's"
  homepage "https://www.xamarin.com/platform"

  deprecate! date: "2024-08-20", because: :discontinued

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.android.pkg"

  zap trash: [
    "/Developer/MonoAndroid",
    "/Library/Frameworks/Xamarin.Android.framework",
    "~/Library/Caches/Xamarin.Android",
    "~/Library/Caches/XamarinBuildDownload",
  ]
end
