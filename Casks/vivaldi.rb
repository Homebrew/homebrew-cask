cask "vivaldi" do
  version "5.4.2753.47"
  sha256 "46e79fe8d3dd66fa8a13f6c2e6e248cd6fa90361fcc4e2bf67d659d7c5a1b349"

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi"
  desc "Web browser with built-in email client focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Vivaldi.app"

  zap trash: [
    "~/Library/Application Support/Vivaldi",
    "~/Library/Caches/com.vivaldi.Vivaldi",
    "~/Library/Caches/Vivaldi",
    "~/Library/Preferences/com.vivaldi.Vivaldi.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState",
  ]
end
