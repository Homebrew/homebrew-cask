cask "wallpapermachine" do
  version "1.12.0"
  sha256 "c762ca347931e2ff5890e28b42a294a3ed65dd1278719c2fde1be97c3035287e"

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
