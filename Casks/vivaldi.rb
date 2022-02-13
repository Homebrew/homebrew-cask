cask "vivaldi" do
  version "5.1.2567.39"
  sha256 "32f72aaeffdcb27c1d3dbda07e9921e131a81d3650a1702db4ff9eed3c108015"

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi"
  desc "Web browser focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Vivaldi.app"

  zap trash: [
    "~/Library/Application Support/Vivaldi",
    "~/Library/Caches/com.vivaldi.Vivaldi",
    "~/Library/Caches/Vivaldi",
    "~/Library/Preferences/com.vivaldi.Vivaldi.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState",
  ]
end
