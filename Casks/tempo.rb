cask "tempo" do
  version "5.0.1"
  sha256 "c49e418b01df1b0eb4807db4bdd58bb7e823ccee6192eedb92593063e3453d74"

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
