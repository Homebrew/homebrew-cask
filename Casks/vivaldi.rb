cask "vivaldi" do
  version "3.4.2066.90"
  sha256 "e37e6f8a91c7eb0edcc4c8a83573c68bb26dafd462a414b5e2949b135adf6e90"

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
