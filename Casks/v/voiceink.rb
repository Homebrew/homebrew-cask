cask "voiceink" do
  version "1.31"
  sha256 "58b7a408deef49d5fb2fea3d26d7c8e7d12f9b2f294d911472c8f040a2c5bb01"

  url "https://github.com/Beingpax/VoiceInk/releases/download/v#{version}/VoiceInk.dmg",
      verified: "github.com/Beingpax/VoiceInk/"
  name "VoiceInk"
  desc "Voice to text app"
  homepage "https://tryvoiceink.com/"

  livecheck do
    url "https://beingpax.github.io/VoiceInk/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "VoiceInk.app"

  zap trash: [
    "~/Library/Application Support/com.prakashjoshipax.VoiceInk",
    "~/Library/Application Support/VoiceInk",
    "~/Library/Caches/com.prakashjoshipax.VoiceInk",
    "~/Library/HTTPStorages/com.prakashjoshipax.VoiceInk",
    "~/Library/Preferences/com.prakashjoshipax.VoiceInk.plist",
    "~/Library/Saved Application State/com.prakashjoshipax.VoiceInk.savedState",
  ]
end
