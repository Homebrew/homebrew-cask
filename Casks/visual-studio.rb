cask "visual-studio" do
  version "8.7.7.10"
  sha256 "95438d765eeba974b2ae53c2d1de2d57cbf9c211f8601691cc9abca0a10e6011"

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
