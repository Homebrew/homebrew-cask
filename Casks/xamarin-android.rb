cask "xamarin-android" do
  version "11.0.0.3"
  sha256 "d57ffd743a18a9c3d5e82e5be9f62f767113f14fdcbeac540891ac568d5f972c"

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
