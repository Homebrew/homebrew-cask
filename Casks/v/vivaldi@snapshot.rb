cask "vivaldi@snapshot" do
  version "8.4.4244.3"
  sha256 "4d31f18dc9e89820aaee58ed58f86f87f7ee880786ba46ea7f58f942f2ca16df"

  url "https://downloads.vivaldi.com/snapshot-auto/Vivaldi.#{version}.universal.tar.xz"
  name "Vivaldi Snapshot"
  desc "Web browser with built-in email client focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/snapshot/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Vivaldi Snapshot.app"

  uninstall quit: "com.vivaldi.Vivaldi.snapshot"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Vivaldi Helper (Renderer)_*.diag",
    "/Library/Logs/DiagnosticReports/Vivaldi Helper_*.diag",
    "/Library/Logs/DiagnosticReports/Vivaldi Snapshot_*.diag",
    "~/Library/Application Support/CrashReporter/Vivaldi Snapshot_*.plist",
    "~/Library/Application Support/Vivaldi Snapshot",
    "~/Library/Caches/com.vivaldi.Vivaldi.snapshot",
    "~/Library/Caches/Vivaldi Snapshot",
    "~/Library/HTTPStorages/com.vivaldi.Vivaldi.snapshot",
    "~/Library/Preferences/com.vivaldi.Vivaldi.snapshot.plist",
    "~/Library/Saved Application State/com.vivaldi.Vivaldi.snapshot.savedState",
    "~/Library/WebKit/com.vivaldi.Vivaldi.snapshot",
  ]
end
