cask "visual-studio" do
  version "17.3.0.215"
  sha256 "9b1ae2baedb7dedd934c728bbde638aa001d514e7f7e828e7de61910edf2b41f"

  url "https://download.visualstudio.microsoft.com/download/pr/698239af-0344-43ed-868e-dc936ff9107b/c52e8c47bb47adab5d6b6b64d5d888e8/visualstudioformacinstaller-#{version}.dmg"
  name "Microsoft Visual Studio"
  desc "Integrated development environment"
  homepage "https://visualstudio.microsoft.com/vs/mac/"

  livecheck do
    url "https://aka.ms/vs/mac/download"
    strategy :header_match do |headers|
      headers["location"][%r{/visualstudioformacinstaller-(\d+(?:\.\d+)+).dmg}i, 1]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"
  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  installer manual: "Install Visual Studio for Mac.app"

  uninstall delete: "/Applications/Visual Studio.app"

  zap trash: [
    "/Applications/Xamarin Profiler.app",
    "/Applications/Xamarin Workbooks.app",
    "~/Library/Application Support/CrashReporter/VisualStudio*",
    "~/Library/Application Support/VisualStudio",
    "~/Library/Caches/VisualStudio",
    "~/Library/Caches/VisualStudioInstaller",
    "~/Library/Caches/XamarinInstaller",
    "~/Library/Developer/Xamarin",
    "~/Library/Logs/VisualStudio",
    "~/Library/Logs/VisualStudioInstaller",
    "~/Library/Logs/XamarinInstaller",
    "~/Library/MonoAndroid",
    "~/Library/MonoTouch",
    "~/Library/Preferences/Visual*Studio",
    "~/Library/Preferences/Xamarin",
    "~/Library/VisualStudio",
    "~/Library/Xamarin.Mac",
  ]
end
