cask "visual-studio" do
  version "17.3.8.4"
  sha256 "788f5aa9387d8644c3f458bb58076723b7e7fa4efaa6837aa842185e6ff3eaa5"

  url "https://download.visualstudio.microsoft.com/download/pr/9f141bc3-da1f-4d6f-9f5d-fbadc4044e77/439376ea8c332d391037716579d25aa6/visualstudioformacinstaller-#{version}.dmg"
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
