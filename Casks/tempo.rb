cask "tempo" do
  version "5.0.7"
  sha256 "a539121a828d6b71469d362f6873c14ae7be689296687211f8d410efe89dabd1"

  url "https://download.yourtempo.co/release/Tempo-#{version}.dmg"
  appcast "https://download.yourtempo.co/release/latest-mac.yml"
  name "Tempo"
  homepage "https://www.yourtempo.co/"

  auto_updates true

  app "Tempo.app"

  zap trash: [
    "~/Library/Application Support/Tempo",
    "~/Library/Logs/Tempo",
    "~/Library/Preferences/com.founders.mial.plist",
    "~/Library/Saved Application State/com.founders.mial.savedState",
  ]
end
