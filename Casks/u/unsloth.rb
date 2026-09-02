cask "unsloth" do
  version "0.1.806-beta"
  sha256 "ec9d320140fe523728e5f029df17f62b8a3b8b2200081628e573fd60c6bcd5ee"

  url "https://github.com/unslothai/unsloth/releases/download/v#{version}/Unsloth-Desktop-MacOS.dmg"
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
