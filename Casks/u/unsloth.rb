cask "unsloth" do
  os macos: "MacOS.dmg", linux: "Linux.AppImage"

  version "0.1.918-beta"
  sha256 arm:          "41264104cb146b081d0f91e2849057bf6d3cff3a14cec2ccb3a1197c05e7e9be",
         x86_64_linux: "263ceca709101e1a3f4b0da7a871e8a4e53244cb6f2d99e76b9a5b82df4ff182"

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
