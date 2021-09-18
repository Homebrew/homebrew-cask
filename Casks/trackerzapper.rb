cask "trackerzapper" do
  version "1.1.0"
  sha256 "74de050ed87cb18167ede5e5d2d297e6868f8931a75e7c443380717ea87b59f8"

  url "https://github.com/rknightuk/TrackerZapper/releases/download/#{version}/TrackerZapper.app.zip",
      verified: "github.com/rknightuk/TrackerZapper/"
  name "trackerzapper"
  desc "Menubar app to remove link tracking parameters automatically"
  homepage "https://rknight.me/apps/tracker-zapper"

  depends_on macos: ">= :big_sur"

  app "TrackerZapper.app"

  uninstall quit: "com.rknightuk.TrackerZapper"

  zap trash: [
    "~/Library/Application Scripts/com.rknightuk.TrackerZapper",
    "~/Library/Application Scripts/com.rknightuk.TrackerZapper-LaunchAtLoginHelper",
    "~/Library/Containers/com.rknightuk.TrackerZapper",
    "~/Library/Containers/com.rknightuk.TrackerZapper-LaunchAtLoginHelper",
  ]
end
