cask "tiles" do
  version "1.2.2,a984e1de"
  sha256 "40213d06317e78a683edd76cd983953cf62940565449eb3793af7cdf7277074e"

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
