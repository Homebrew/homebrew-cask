cask "xamarin-android" do
  version "11.0.2.0"
  sha256 "2f02f74d5e2813d3a5ea8a38e2a9213664820cd1d7b00c3f7d8c9270d5202c87"

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast "https://docs.microsoft.com/en-us/xamarin/android/release-notes/",
          must_contain: version.major_minor
  name "Xamarin.Android"
  homepage "https://www.xamarin.com/platform"

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.android.pkg"

  zap trash: [
    "/Developer/MonoAndroid",
    "/Library/Frameworks/Xamarin.Android.framework",
    "~/Library/Caches/Xamarin.Android",
    "~/Library/Caches/XamarinBuildDownload",
  ]
end
