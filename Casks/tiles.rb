cask "tiles" do
  version "1.1.1,15113647"
  sha256 "83a523f5d180e20d9b9d35c5544678a06fde202ea6407ff725847fda021fc9bc"

  url "https://updates.sempliva.com/tiles/Tiles-#{version.after_comma}.dmg"
  appcast "https://updates.sempliva.com/tiles/updates.xml",
          must_contain: version.after_comma
  name "Sempliva Tiles"
  desc "Window manager"
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
