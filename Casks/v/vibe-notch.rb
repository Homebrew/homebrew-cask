cask "vibe-notch" do
  version "1.3.2"
  sha256 "c7595669d24cb7c05da490fae4fbee2b412c07ba0a215f86dad6d410cd0ddcc0"

  url "https://github.com/farouqaldori/vibe-notch/releases/download/v#{version}/VibeNotch-#{version}.dmg",
      verified: "github.com/farouqaldori/vibe-notch/"
  name "Vibe Notch"
  desc "Dynamic Island-style notifications for Claude Code CLI sessions"
  homepage "https://vibenotch.app/"

  livecheck do
    url "https://vibenotch.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Vibe Notch.app"

  zap trash: [
    "~/.claude/hooks/claude-island-state.py",
    "~/Library/Application Support/com.celestial.ClaudeIsland",
    "~/Library/Caches/com.celestial.ClaudeIsland",
    "~/Library/HTTPStorages/com.celestial.ClaudeIsland",
    "~/Library/Preferences/com.celestial.ClaudeIsland.plist",
    "~/Library/Saved Application State/com.celestial.ClaudeIsland.savedState",
  ]
end
