cask "unsloth" do
  os macos: "MacOS.dmg", linux: "Linux.AppImage"

  version "0.1.924-beta"
  sha256 arm:          "fa0d3d979c05fc07afba7cf9a7d9b920dc7cf13c9da8d81eddfbdd6bf06c908b",
         x86_64_linux: "f3666747075a9f4defdd298e3ac9def1b007f7b69b23081b67c3a716bfffccee"

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

    zap trash: [
          "~/.cache/unsloth-studio",
          "~/.config/ai.unsloth.studio",
          "~/.local/share/ai.unsloth.studio",
          "~/.local/share/applications/unsloth-studio-handler.desktop",
          "~/.unsloth/studio",
        ],
        rmdir: "~/.unsloth"
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
