cask "wallpapermachine" do
  version "1.14.0"
  sha256 "2bdea2d5c0d44947c096cfc37684890ae17af6cf6e5add878cf0fa959251734f"

  url "https://github.com/MMFoundation/WallpaperMachine/releases/download/v#{version}/WallpaperMachine-#{version}-arm64.dmg"
  name "WallpaperMachine"
  desc "Player for Wallpaper Engine live wallpapers"
  homepage "https://www.wallpapermachine.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "WallpaperMachine.app"

  uninstall quit: "app.wallpapermachine"

  zap trash: [
    "~/Library/Application Scripts/app.wallpapermachine.wallpaper-extension",
    "~/Library/Application Support/app.wallpapermachine",
    "~/Library/Application Support/WallpaperMachine",
    "~/Library/Caches/app.wallpapermachine",
    "~/Library/Containers/app.wallpapermachine.wallpaper-extension",
    "~/Library/HTTPStorages/app.wallpapermachine",
    "~/Library/HTTPStorages/app.wallpapermachine.binarycookies",
    "~/Library/Preferences/app.wallpapermachine.plist",
    "~/Library/WebKit/app.wallpapermachine",
  ]
end
