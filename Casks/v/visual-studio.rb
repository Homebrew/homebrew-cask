cask "visual-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "17.6.6.408,83c68d80-cca7-40f0-8411-7ca3263f8ae9,4a418b7f50fbee5ef0567d19f8348f5e"
    sha256 "a57e3a4eeec189c1c715f1e090421902450434d6f91280a33748cd74751a2ad9"
  end
  on_intel do
    version "17.6.6.408,83c68d80-cca7-40f0-8411-7ca3263f8ae9,ebbc76f6530843da11bc4e13164caf9b"
    sha256 "dc89f21704974ff73f73abaf47ffdc53813e84aceba65cc8a8b71fb613b36b7d"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.csv.second}/#{version.csv.third}/visualstudioformac-#{version.csv.first}-#{arch}.dmg"
  name "Microsoft Visual Studio"
  desc "Integrated development environment"
  homepage "https://visualstudio.microsoft.com/vs/mac/"

  livecheck do
    url "https://aka.ms/vsmac/manifest/#{version.major}-stable"
    regex(%r{/download/pr/([^/]+)/([^/]+)/visualstudioformac[._-]v?(\d+(?:\.\d+)+)-#{arch}.dmg}i)
    strategy :json do |json|
      json["items"].flat_map do |item|
        item["url"]&.scan(regex)&.map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"
  depends_on cask: "homebrew/cask-versions/mono-mdk-for-visual-studio"

  app "Visual Studio.app"

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
