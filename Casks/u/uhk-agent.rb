cask "uhk-agent" do
  version "7.0.0"
  sha256 "e3e33382530869694715e2ebe7eb3937ca6d78a4382911abc54530be7a2c60f2"

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
