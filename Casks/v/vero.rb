cask "vero" do
  version "0.20.2676"
  sha256 "d2d78f6661f149053d3b8183668332d7af008b555131a14d92c6bdf7e7ddffde"

  url "https://downloads.vero.co/vero-beta-#{version}.dmg"
  name "VERO"
  desc "Ad-free, Algorithm-free Social"
  homepage "https://vero.co/"

  livecheck do
    url "https://vero.co/download/desktop/beta/macos"
    strategy :header_match
  end

  depends_on :macos

  app "VERO.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.vero.desktop.sfl*",
    "~/Library/Application Support/VERO",
    "~/Library/Logs/VERO",
    "~/Library/Preferences/co.vero.desktop.plist",
    "~/Library/Saved Application State/co.vero.desktop.savedState",
  ]
end
