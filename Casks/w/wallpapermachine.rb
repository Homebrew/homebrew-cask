cask "wallpapermachine" do
  version "1.16.0"
  sha256 "5a264c23ca784e5da382dea400d1f3475475c902b2f668ef8d42475dd6e44ebe"

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
