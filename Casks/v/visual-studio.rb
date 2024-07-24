cask "visual-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "17.6.13.424,f96671c7-42c3-434d-85e7-87c23a8044ba,b0a7e7510b55c11fc3daa88843723315"
    sha256 "c9603ccfbbfe63d136dd85dc2e51548f443b02a87ada429bb09db3dbaa3cbfc3"
  end
  on_intel do
    version "17.6.13.424,f96671c7-42c3-434d-85e7-87c23a8044ba,67c53d687d271392da1462fc7f3a9704"
    sha256 "edb52e22a84eed8ba6bbea21c5cc347744c132e4b45db0633ca2a817551a9fd5"
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

  deprecate! date: "2024-08-31", because: :discontinued

  auto_updates true
  depends_on macos: ">= :catalina"
  depends_on cask: "mono-mdk-for-visual-studio"

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
