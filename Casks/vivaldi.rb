cask "vivaldi" do
  version "3.4.2066.99"
  sha256 "d6e96a379f53ceb650f806f21887855d005eeeb86e69f572b392655faf2f0ce4"

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
