cask "trackerzapper" do
  version "1.1.1"
  sha256 "892083a570d5941603678cf5b4d10ad13ecd4242e748cbddec6d7227d628ccb3"

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
