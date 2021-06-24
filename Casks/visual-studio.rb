cask "visual-studio" do
  version "8.10.3.15"
  sha256 "0f8cebbd64b96377d36407b4e2b89d74ef0e47ccf4f4016e11089950d3b3428a"

  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg",
      verified: "dl.xamarin.com/VsMac/"
  name "Microsoft Visual Studio"
  desc "Integrated development environment"
  homepage "https://www.visualstudio.com/vs/visual-studio-mac/"

  livecheck do
    url "https://docs.microsoft.com/en-us/visualstudio/releasenotes/vs2019-mac-relnotes"
    regex(/Visual\s*Studio\s*\d+\s+for\s+Mac\s+version\s+\d+(?:\.\d+)*\s+\((\d+(?:\.\d+)+)\)/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"
  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  app "Visual Studio.app"

  zap trash: [
    "/Applications/Xamarin Profiler.app",
    "/Applications/Xamarin Workbooks.app",
    "~/Library/Application Support/CrashReporter/VisualStudio*",
    "~/Library/Application Support/VisualStudio",
    "~/Library/Caches/VisualStudio",
    "~/Library/Developer/Xamarin",
    "~/Library/Logs/VisualStudio",
    "~/Library/Preferences/Visual*Studio",
    "~/Library/Preferences/Xamarin",
    "~/Library/VisualStudio",
  ]
end
