cask "vivaldi" do
  version "6.8.3381.48"
  sha256 "36bd0b37881acf9e02aa68dfa91cb8b3f5c6503c660035f75cfde6e2b8cf46ad"

  url "https://downloads.vivaldi.com/stable-auto/Vivaldi.#{version}.universal.tar.xz"
  name "Vivaldi"
  desc "Web browser with built-in email client focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Vivaldi.app"

  uninstall quit: "com.vivaldi.Vivaldi"

  zap trash: [
    "~/Library/Application Support/Vivaldi",
    "~/Library/Caches/com.vivaldi.Vivaldi",
    "~/Library/Caches/Vivaldi",
    "~/Library/HTTPStorages/com.vivaldi.Vivaldi",
    "~/Library/Preferences/com.vivaldi.Vivaldi.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState",
    "~/Library/WebKit/com.vivaldi.Vivaldi",
  ]
end
