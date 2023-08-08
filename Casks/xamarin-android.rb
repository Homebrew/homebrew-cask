cask "xamarin-android" do
  version "13.2.0.6"
  sha256 "2dafc41fcfd9cc9e0c63ebdbed794d43094cad37622017dc6eb99758ee276d19"

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
