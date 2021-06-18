cask "xamarin-android" do
  version "11.1.0.17"
  sha256 "c6fe23687fcdec86b845a5ca26fe8ad39d0a42ccfecd0d1250c227eb8aabcf24"

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
