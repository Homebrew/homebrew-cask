cask "unsloth" do
  os macos: "MacOS.dmg", linux: "Linux.AppImage"

  version "0.1.813-beta"
  sha256 arm:          "28c7e6d94adc1d682d460fa7c2d1ee467855c6241f3d70640bad450d539a67b4",
         x86_64_linux: "8d793ad92720cee1740c13b01ddb9d16f6e03da0fd17b7617298efd26d6a8639"

  on_macos do
    auto_updates true
    depends_on arch: :arm64

    app "Unsloth.app"

    zap trash: [
      "~/.unsloth/studio",
      "~/Library/Application Support/ai.unsloth.studio",
      "~/Library/Caches/ai.unsloth.studio",
      "~/Library/LaunchAgents/unsloth-studio.plist",
      "~/Library/WebKit/ai.unsloth.studio",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Unsloth-Desktop-Linux.AppImage", target: "Unsloth.AppImage"
  end

  url "https://github.com/unslothai/unsloth/releases/download/v#{version}/Unsloth-Desktop-#{os}"
  name "Unsloth Desktop"
  desc "Desktop application for Unsloth Studio"
  homepage "https://unsloth.ai/"

  # This regex has to match unstable versions until a stable version becomes
  # available. This should be updated in the future to only match stable
  # versions when possible.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_latest
  end
end
