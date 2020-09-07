cask "vivaldi" do
  version "3.3.2022.36"
  sha256 "e8dc43d22927c11963667dfe8ebb0473ae9f9bfdafb4745443eaf500ba28c1b9"

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
  name "Vivaldi"
  homepage "https://vivaldi.com/"

  auto_updates true

  app "Vivaldi.app"

  zap trash: [
    "~/Library/Application Support/Vivaldi",
    "~/Library/Caches/Vivaldi",
    "~/Library/Caches/com.vivaldi.Vivaldi",
    "~/Library/Preferences/com.vivaldi.Vivaldi.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState",
  ]
end
