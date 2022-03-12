cask "tiles" do
  version "1.2.3,9890ca0f"
  sha256 "024ca61875fa1d7cac205b7c656b0490cd491389b94d4c98c4733c128060e670"

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
