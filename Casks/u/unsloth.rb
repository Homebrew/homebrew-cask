cask "unsloth" do
  version "0.1.800-beta"
  sha256 "0cd2f2001b08df8bd4e47ea5784ccae9144ab80168f4964a2b89c9cd8e0b15ab"

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
