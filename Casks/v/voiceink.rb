cask "voiceink" do
  version "1.50"
  sha256 "9438824c4baccea6e40209de454cf8af9e030933435bffa2037c24830fba66cc"

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
