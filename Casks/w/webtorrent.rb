cask "webtorrent" do
  version "0.24.0"
  sha256 "9cf28d0f0ef74d793cca5a0fee0d7195a11c055b4a6c118cea295c308a3bfd9d"

  url "https://github.com/webtorrent/webtorrent-desktop/releases/download/v#{version}/WebTorrent-v#{version}.dmg",
      verified: "github.com/webtorrent/webtorrent-desktop/"
  name "WebTorrent Desktop"
  desc "Torrent streaming application"
  homepage "https://webtorrent.io/desktop/"

  app "WebTorrent.app"

  zap trash: [
    "~/Library/Application Support/io.webtorrent.webtorrent.ShipIt",
    "~/Library/Application Support/WebTorrent",
    "~/Library/Caches/io.webtorrent.webtorrent",
    "~/Library/Caches/io.webtorrent.webtorrent.ShipIt",
    "~/Library/Caches/WebTorrent",
    "~/Library/Cookies/io.webtorrent.webtorrent.binarycookies",
    "~/Library/HTTPStorages/io.webtorrent.webtorrent",
    "~/Library/Logs/WebTorrent",
    "~/Library/Preferences/ByHost/io.webtorrent.webtorrent.ShipIt.*.plist",
    "~/Library/Preferences/io.webtorrent.webtorrent-helper.plist",
    "~/Library/Preferences/io.webtorrent.webtorrent.plist",
    "~/Library/Saved Application State/io.webtorrent.webtorrent.savedState",
    "~/Library/WebKit/io.webtorrent.webtorrent",
  ]

  caveats do
    requires_rosetta
  end
end
