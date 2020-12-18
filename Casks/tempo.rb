cask "tempo" do
  version "5.5.2"
  sha256 "3b7f13e6ee4dea1fce37113f342ad6ff51d730b40acd3b728407d6ea5bbadd16"

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
