cask "xamarin-android" do
  version "11.3.0.4"
  sha256 "a2efde72d9d75eacf65a9e2dacc4516875a738646c7f098b764e130dab4e0949"

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
