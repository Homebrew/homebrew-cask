cask "visual-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "17.6.12.410,9f608c6d-e924-47b6-9601-ed536edc2f50,d758e53eb9679feb173037d33dbaddff"
    sha256 "bcd69df36cefdfe81cd1279cff37bbeba1965b39ac5463c640e68ac2a3ab0e84"
  end
  on_intel do
    version "17.6.12.410,9f608c6d-e924-47b6-9601-ed536edc2f50,dbb076e4bb3074747c73f5eab54d4955"
    sha256 "817ce83ce3e5d12536ac8af3d7f5cc6dde7ff84a466d11afa09e1d2788489297"
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
