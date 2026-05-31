cask "voicetypr" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.12.3"
  sha256 arm:   "b0217e01d030f9febb1ac46b03c0d28c2f443ff636b7bbb1486f4b22b0219bb0",
         intel: "950aa98aacaa4fdaf060e6a29bcd22aabf4c57aabbbd5609dd6f3c0db7ba50f2"

  url "https://github.com/moinulmoin/voicetypr/releases/download/v#{version}/VoiceTypr_#{version}_#{arch}.dmg",
      verified: "github.com/moinulmoin/voicetypr/"
  name "VoiceTypr"
  desc "Offline AI voice-to-text dictation tool"
  homepage "https://voicetypr.com/"

  auto_updates true
  depends_on macos: :ventura

  app "VoiceTypr.app"

  zap trash: [
    "~/Library/Application Support/com.ideaplexa.voicetypr",
    "~/Library/Caches/com.ideaplexa.voicetypr",
    "~/Library/Logs/com.ideaplexa.voicetypr",
    "~/Library/WebKit/com.ideaplexa.voicetypr",
  ]
end
