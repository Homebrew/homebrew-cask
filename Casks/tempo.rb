cask "tempo" do
  version "5.1.0"
  sha256 "cda8ea38a6d181ef6e64867f9006be01b5df4508c4f33bc4b288df0b26afc38f"

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
