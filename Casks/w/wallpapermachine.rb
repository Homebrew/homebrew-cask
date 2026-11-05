cask "wallpapermachine" do
  version "1.9.2"
  sha256 "190799ae28c1f791815dab4058eaebdb3869afb9ce7d8b9a5adbfbfad23de7a7"

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
