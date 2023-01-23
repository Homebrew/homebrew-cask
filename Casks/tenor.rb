cask "tenor" do
  version "2.0.5,21"
  sha256 :no_check

  url "https://media.tenor.com/mac/bin/GIFforMac.dmg"
  name "Tenor"
  desc "Send, share and save gifs from the menu bar"
  homepage "https://tenor.com/mac"

  livecheck do
    url "https://media.tenor.com/mac/gif_for_mac_appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Tenor.app"

  zap trash: [
    "~/Library/Caches/tenor-*",
    "~/Library/HTTPStorages/com.tenorshare.ReiBoot",
    "~/Library/HTTPStorages/com.tenorshare.ReiBoot.binarycookies",
    "~/Library/Application Support/com.riffsy.GIF-for-Mac",
    "~/Library/Preferences/com.riffsy.GIF-for-Mac.plist",
    "~/Library/Caches/com.crashlytics.data/com.riffsy.GIF-for-Mac",
  ]

  uninstall quit: "com.riffsy.GIF-for-Mac"
end
