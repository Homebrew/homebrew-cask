cask "tiles" do
  version "1.2.1,c0cd2df5"
  sha256 "34a6dd09b0f1df4ac6116395bb403b090516faa612162bf4f80bbc1e832813fc"

  url "https://updates.sempliva.com/tiles/Tiles-#{version.after_comma}.dmg"
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
