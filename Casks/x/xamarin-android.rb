cask "xamarin-android" do
  version "13.2.2.0"
  sha256 "aeb215d33324f8d8dbf41aae2a987249433a7a4c264588384a40695c162877f4"

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
