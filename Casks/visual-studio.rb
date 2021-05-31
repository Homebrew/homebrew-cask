cask "visual-studio" do
  version "8.9.10.4"
  sha256 "96be0f84eee72b556d980e32e7b9ed8c34eeadd2a561fa6ab8c8a308d1a638b3"

  url "https://dl.xamarin.com/VsMac/VisualStudioForMac-#{version}.dmg",
      verified: "dl.xamarin.com/VsMac/"
  name "Microsoft Visual Studio"
  desc "Integrated development environment"
  homepage "https://www.visualstudio.com/vs/visual-studio-mac/"

  livecheck do
    url "https://docs.microsoft.com/en-us/visualstudio/releasenotes/vs2019-mac-relnotes"
    strategy :page_match do |page|
      match = page.match(
        /Visual\sStudio\s(\d+(?:\.\d+)*)\sfor\sMac\sversion\s(\d+(?:\.\d+)*)\s\((\d+(?:\.\d+)*)\)/i,
      )
      (match[3]).to_s
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"
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
