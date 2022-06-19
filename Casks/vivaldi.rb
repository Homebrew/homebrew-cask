cask "vivaldi" do
  version "5.3.2679.58"
  sha256 "f6cc3ba257bfadada849b2c48bb0af09da5113a639e7a15f0efed54d98a4dd81"

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
