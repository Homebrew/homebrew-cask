cask "uhk-agent" do
  version "5.0.2"
  sha256 "7f3d37fd63d41b474785883b7ec40cceaa26480638bd6fd4c782fb677a8dcfb8"

  url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.dmg"
  name "Ultimate Hacking Keyboard Agent"
  name "UHK Agent"
  desc "Configuration application for the Ultimate Hacking Keyboard"
  homepage "https://github.com/UltimateHackingKeyboard/agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "UHK Agent.app"

  uninstall quit: "com.ultimategadgetlabs.agent"

  zap trash: [
    "~/Library/Application Support/uhk-agent",
    "~/Library/Logs/UHK Agent",
    "~/Library/Logs/uhk-agent",
    "~/Library/Preferences/com.ultimategadgetlabs.agent.helper.plist",
    "~/Library/Preferences/com.ultimategadgetlabs.agent.plist",
    "~/Library/Saved Application State/com.ultimategadgetlabs.agent.savedState",
  ]
end
