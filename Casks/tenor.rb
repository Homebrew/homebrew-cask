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

  uninstall quit: "com.riffsy.GIF-for-Mac"
end
