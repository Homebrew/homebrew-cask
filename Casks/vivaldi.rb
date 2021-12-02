cask "vivaldi" do
  version "5.0.2497.24"
  sha256 "0c48c63acd45dfeff9ebb83c8a814dbf03a0f31e2ac3fc905bd6aa5ebc1b46ef"

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi"
  desc "Web browser focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
    strategy :sparkle
  end

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
