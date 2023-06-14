cask "visual-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "17.5.7.6,9d0f62f4-40f4-4eea-82ba-b74a5585a09c,8e9f85bec58d0fc1814c69ef55f42a33"
    sha256 "726534b703d2889ecd4edcf7359db982b81e5ef1f245b1920102bc76c9f28eff"
  end
  on_intel do
    version "17.5.7.6,9d0f62f4-40f4-4eea-82ba-b74a5585a09c,3edb39f0d876b0d0a8d1cbf655da57c1"
    sha256 "203a8b29d8617cb491653d75a715982f79cc149d736e899fd328cab6d61c05ed"
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
