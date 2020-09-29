cask "tempo" do
  version "5.0.6"
  sha256 "12d8ac654b6e07ddf69c83609047133c92cd609112ea05b020ca4e30ccf1764f"

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
