cask "unsloth" do
  os macos: "MacOS.dmg", linux: "Linux.AppImage"

  version "0.1.915-beta"
  sha256 arm:          "51cd3aa08e5f6010be1cb3aa7cc66850c9640e069e6a7c82542e74f08aa4c165",
         x86_64_linux: "10fc44e25032f9bca242c4ed3dd61f62115f46b35a5f4c875ff989ce050461ef"

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
