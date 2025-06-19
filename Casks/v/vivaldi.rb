cask "vivaldi" do
  version "7.4.3684.52"
  sha256 "eec605829ee8703fb21637850a91a4523031dd331056f1099cc4c95dde45e8e1"

  url "https://downloads.vivaldi.com/stable-auto/Vivaldi.#{version}.universal.tar.xz"
  name "Vivaldi"
  desc "Web browser with built-in email client focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/public/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Vivaldi.app"

  uninstall quit: "com.vivaldi.Vivaldi"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Vivaldi Helper (Renderer)_*.diag",
    "/Library/Logs/DiagnosticReports/Vivaldi_*.diag",
    "~/Library/Application Support/CrashReporter/Vivaldi_*.plist",
    "~/Library/Application Support/Vivaldi",
    "~/Library/Caches/com.vivaldi.Vivaldi",
    "~/Library/Caches/Vivaldi",
    "~/Library/HTTPStorages/com.vivaldi.Vivaldi",
    "~/Library/Preferences/com.vivaldi.Vivaldi.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState",
    "~/Library/WebKit/com.vivaldi.Vivaldi",
  ]
end
