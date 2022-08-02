cask "xamarin-android" do
  version "12.3.3.3"
  sha256 "516d089430cfc25fb2bb1f7faf876237c0bfa6ed12ee3cda80371437cc1664d8"

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  name "Xamarin.Android"
  desc "Gives .NET developers complete access to Android SDK's"
  homepage "https://www.xamarin.com/platform"

  livecheck do
    url "https://software.xamarin.com/Service/Updates?v=2&pvd1ec039f-f3db-468b-a508-896d7c382999=0"
    regex(%r{/xamarin\.android[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: "com.xamarin.android.pkg"

  zap trash: [
    "/Developer/MonoAndroid",
    "/Library/Frameworks/Xamarin.Android.framework",
    "~/Library/Caches/Xamarin.Android",
    "~/Library/Caches/XamarinBuildDownload",
  ]
end
