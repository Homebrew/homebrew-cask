cask "wallpaper-wizard" do
  version "2.2.0"
  sha256 "8237a147a685cf4831a637b3fbf113ccb14f1150801450b2f1cc96f2f5b7942c"

  url "https://dl.devmate.com/com.macpaw.WallWiz-site/WallpaperWizard-#{version.major}.dmg",
      verified: "dl.devmate.com/com.macpaw.WallWiz-site/"
  name "Wallpaper Wizard"
  desc "Adjustable wallpaper application"
  homepage "https://wallwiz.com/"

  livecheck do
    url "https://updates.devmate.com/com.macpaw.WallWiz-site.xml"
    strategy :sparkle
  end

  app "Wallpaper Wizard.app"

  uninstall quit: "com.macpaw.WallWiz-site"

  zap trash: [
    "~/Library/Application Support/com.macpaw.WallWiz-site",
    "~/Library/Application Support/Wallpaper Wizard",
    "~/Library/Caches/com.macpaw.WallWiz-site",
    "~/Library/Cookies/com.macpaw.WallWiz-site.binarycookies",
    "~/Library/Logs/com.macpaw.WallWiz-site",
    "~/Library/Preferences/com.macpaw.WallWiz-site.plist",
  ]
end
