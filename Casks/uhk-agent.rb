cask "uhk-agent" do
   version "2.1.2"
   sha256 "28345eb41b33dc3d5d40675013c7ee39ed8de4da05e64ea05c13d5436cc5acbf"

   url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.dmg"
   name "Ultimate Hacking Keyboard Agent"
   name "UHK Agent"
   desc "Configuration application for the Ultimate Hacking Keyboard"
   homepage "https://github.com/UltimateHackingKeyboard/agent"

   livecheck do
     url "https://github.com/UltimateHackingKeyboard/agent/releases/latest"
     strategy :header_match
   end

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
