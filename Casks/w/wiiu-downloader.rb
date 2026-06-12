cask "wiiu-downloader" do
  version "2.93"
  sha256 "2d33976ac7fec71530e3757b7b96c389eb301e5eadfbdc007f7a3e67bc194347"

  url "https://github.com/Xpl0itU/WiiUDownloader/releases/download/v#{version}/WiiUDownloader-macOS-Universal.dmg"
  name "WiiUDownloader"
  desc "Download Wii U games, updates, DLC and demos from Nintendo's servers"
  homepage "https://github.com/Xpl0itU/WiiUDownloader"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :big_sur

  app "WiiUDownloader.app"

  zap trash: [
    "~/Library/Application Support/WiiUDownloader",
    "~/Library/Caches/com.Xpl0itU.WiiUDownloader",
    "~/Library/Preferences/com.Xpl0itU.WiiUDownloader.plist",
    "~/Library/Saved Application State/com.Xpl0itU.WiiUDownloader.savedState",
  ]
end
