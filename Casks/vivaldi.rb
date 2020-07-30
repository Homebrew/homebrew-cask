cask "vivaldi" do
  version "3.1.1929.48"
  sha256 "9bf5f0ff2b6bc8dc6036d738c28a6cb15bafe2de3fac7cb99058bec700ac4540"

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
