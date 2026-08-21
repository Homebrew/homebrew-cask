cask "unsloth" do
  version "0.1.803-beta"
  sha256 "185fc9829b7dd37cadb140f4de041ca1f8868b52bd85f56a0fb8d30788c9fb6e"

  url "https://github.com/unslothai/unsloth/releases/download/v#{version}/Unsloth-Desktop-#{version.dots_to_underscores.tr("-", "_")}-MacOS.dmg"
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

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Unsloth.app"

  zap trash: [
    "~/.unsloth/studio",
    "~/Library/Application Support/ai.unsloth.studio",
    "~/Library/Caches/ai.unsloth.studio",
    "~/Library/LaunchAgents/unsloth-studio.plist",
    "~/Library/WebKit/ai.unsloth.studio",
  ]
end
