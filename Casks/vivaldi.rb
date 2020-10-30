cask "vivaldi" do
  version "3.4.2066.88"
  sha256 "c905fc7b18286ee1ac00f511b991dd0dfadb9ecf12802385f13478cf32c0c5e4"

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
  name "Vivaldi"
  desc "Web browser focusing on customization and control"
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
