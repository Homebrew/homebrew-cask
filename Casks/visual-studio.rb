cask "visual-studio" do
  version "17.0.4.5"
  sha256 "274108ad8c26a82ecc14bd02bfaa4266a0a0cf82373cd3486c2789a317bbd40d"

  url "https://download.visualstudio.microsoft.com/download/pr/ca7c7580-dd29-42d8-a0b1-3223e61f1623/b38739f51587806a5751419435d6c4ad/visualstudioformacinstaller-#{version}.dmg"
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
