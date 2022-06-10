cask "xamarin-android" do
  version "12.3.0.3"
  sha256 "3b30442d29984e02820ab3db3a9d587ccb51371e7066f7d41528ede60e9ae2b5"

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
