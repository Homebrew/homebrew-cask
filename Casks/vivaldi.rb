cask "vivaldi" do
  version "4.0.2312.41"
  sha256 "a72d5eced4a70187ec8499eccd58f5b028b6dfe5978e2645c1539fb7d0fc112d"

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
