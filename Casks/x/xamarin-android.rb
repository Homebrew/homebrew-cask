cask "xamarin-android" do
  version "13.2.2.0"
  sha256 :no_check

  url "https://aka.ms/xamarin-android-commercial-d17-8-macos",
      verified: "aka.ms"
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
