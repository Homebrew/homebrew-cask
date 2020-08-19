cask "tiles" do
  version "1.1.0,7e414856"
  sha256 "349231a477da63c1f1e70bf329f10a03496d3d79a63975d8cf3fa4e06e056abd"

  url "https://updates.sempliva.com/tiles/Tiles-#{version.after_comma}.dmg"
  appcast "https://updates.sempliva.com/tiles/updates.xml",
          must_contain: version.after_comma
  name "Sempliva Tiles"
  homepage "https://www.sempliva.com/tiles/"

  app "Tiles.app"

  uninstall launchctl: "com.sempliva.TilesHelper",
            quit:      "com.sempliva.Tiles"

  zap trash: [
    "~/Library/Application Support/com.sempliva.Tiles",
    "~/Library/Caches/com.sempliva.Tiles",
    "~/Library/Preferences/com.semplive.Tiles.plist",
  ]
end
