cask "tiles" do
  version "1.3.0,6c7491b2"
  sha256 "c88ec00075f9c0504f793ec354be9752c700717deefe2164a67d6daeb90ff48d"

  url "https://updates.sempliva.com/tiles/Tiles-#{version.csv.second}.dmg"
  name "Sempliva Tiles"
  desc "Window manager"
  homepage "https://www.sempliva.com/tiles/"

  livecheck do
    url "https://updates.sempliva.com/tiles/updates.xml"
    strategy :sparkle do |item|
      id = item.url[/Tiles[._-](\h+)\.dmg/i, 1]
      "#{item.short_version},#{id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Tiles.app"

  uninstall launchctl: "com.sempliva.TilesHelper",
            quit:      "com.sempliva.Tiles"

  zap trash: [
    "~/Library/Application Support/com.sempliva.Tiles",
    "~/Library/Caches/com.sempliva.Tiles",
    "~/Library/Preferences/com.semplive.Tiles.plist",
  ]
end
