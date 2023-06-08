cask "visual-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "17.5.6.3,91b81b8c-74ac-4710-a93f-49bf4553845e,ed3a76bd92fcbfe800b830b2739774e0"
    sha256 "cf336af2f0b93d4934ababf2d684b61da16bd8fa9a16b675291872ef26b03d7d"
  end
  on_intel do
    version "17.5.6.3,91b81b8c-74ac-4710-a93f-49bf4553845e,e5a8ce0b143da17fa397b257562e6033"
    sha256 "296df672054773fbee2784e88b461464966bd80b3aedc84c0f5c8e77ddb2213c"
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
