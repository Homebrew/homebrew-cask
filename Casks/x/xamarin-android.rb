cask "xamarin-android" do
  version "13.2.2.0"
  sha256 "aeb215d33324f8d8dbf41aae2a987249433a7a4c264588384a40695c162877f4"

  url "https://aka.ms/xamarin-android-commercial-d17-8-macos"
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
