cask "vero" do
  version "0.20.2702"
  sha256 "ddc3ceee5b126d64dd49d1acf42fd6e230bc3d588bed7c44bc556944d88d4913"

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
