cask "visual-studio" do
  version "8.8.0.2913"
  sha256 "b83fd4caa6636e781d58f15b5ffa26942e2acaae7d4a181e6d5f29ce204e39d0"

  # dl.xamarin.com/VsMac/ was verified as official when first introduced to the cask
  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg"
  appcast "https://docs.microsoft.com/en-us/visualstudio/releasenotes/vs2019-mac-relnotes",
          must_contain: version.major_minor_patch
  name "Microsoft Visual Studio"
  desc "Integrated development environment"
  homepage "https://www.visualstudio.com/vs/visual-studio-mac/"

  auto_updates true
  depends_on macos: ">= :sierra"
  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  app "Visual Studio.app"

  zap trash: [
    "/Applications/Xamarin Workbooks.app",
    "/Applications/Xamarin Profiler.app",
    "~/Library/Application Support/VisualStudio",
    "~/Library/Application Support/CrashReporter/VisualStudio*",
    "~/Library/Caches/VisualStudio",
    "~/Library/Logs/VisualStudio",
    "~/Library/Preferences/Visual*Studio",
    "~/Library/Preferences/Xamarin",
    "~/Library/Developer/Xamarin",
    "~/Library/VisualStudio",
  ]
end
