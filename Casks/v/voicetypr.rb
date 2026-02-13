cask "voicetypr" do
  version "1.11.2"
  sha256 "659064b028b9267fb86016aa7468442a619472648970e1c584b365990602a79c"

  url "https://github.com/moinulmoin/voicetypr/releases/download/v#{version}/VoiceTypr_#{version}_aarch64.dmg",
      verified: "github.com/moinulmoin/voicetypr/"
  name "VoiceTypr"
  desc "Offline AI voice-to-text dictation tool"
  homepage "https://voicetypr.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "VoiceTypr.app"

  zap trash: [
    "~/Library/Application Support/com.ideaplexa.voicetypr",
    "~/Library/Caches/com.ideaplexa.voicetypr",
    "~/Library/HTTPStorages/com.ideaplexa.voicetypr",
    "~/Library/Logs/com.ideaplexa.voicetypr",
    "~/Library/Preferences/com.ideaplexa.voicetypr.plist",
    "~/Library/Saved Application State/com.ideaplexa.voicetypr.savedState",
    "~/Library/WebKit/com.ideaplexa.voicetypr",
  ]
end
