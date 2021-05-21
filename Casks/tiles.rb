cask "tiles" do
  version "1.2.0,c4c8c9f9"
  sha256 "75cf971fb5e8abe5c22dd86aa52946b916f57f8c16da78e86473ac4d21dbf80f"

  url "https://updates.sempliva.com/tiles/Tiles-#{version.after_comma}.dmg"
  name "Sempliva Tiles"
  desc "Window manager"
  homepage "https://www.sempliva.com/tiles/"

  livecheck do
    url "https://updates.sempliva.com/tiles/updates.xml"
    strategy :sparkle do |item|
      id = item.url[/-([0-9a-f]+)\.dmg/i, 1]
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
