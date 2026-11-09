cask "tutti" do
  arch arm: "arm64", intel: "x64"

  version "0.2.33"
  sha256 arm:   "be7bff4c535e4f6d26a105d951cc13c31cc2c5f64d87e58fd32dc6ac1cdcd87f",
         intel: "1ff34e00d897a4c609555d56e513b653f1ec6307bab1ac7edfb41512314f9829"

  url "https://github.com/tutti-os/tutti/releases/download/v#{version}/Tutti-#{version}-mac-#{arch}.dmg"
  name "Tutti"
  desc "Workspace for connecting and coordinating AI agents"
  homepage "https://tutti.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tutti.app"

  zap trash: [
    "~/.local/bin/tutti-agent",
    "~/.local/share/tutti",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.tutti.desktop.sfl*",
    "~/Library/Application Support/Tutti",
    "~/Library/Caches/@tutti-osdesktop-updater",
    "~/Library/Caches/sh.tutti.desktop.ShipIt",
    "~/Library/Preferences/sh.tutti.desktop.plist",
  ]
end
