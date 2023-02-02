cask "uhk-agent" do
  version "2.1.1"
  sha256 "c27ac00a1818fdbda3c12ac4323a3fe017ea172c1b175906d34aff086828a3dc"

  url "https://github.com/UltimateHackingKeyboard/agent/releases/download/v#{version}/UHK.Agent-#{version}-mac.dmg", verified: "github.com/UltimateHackingKeyboard/agent"
  name "uhk-agent"
  desc "UHK Agent is the configuration application of the Ultimate Hacking Keyboard"
  homepage "https://ultimatehackingkeyboard.com/"

  app "UHK Agent.app"
end
