cask "tenor" do
  version "2.0.5,21"
  sha256 :no_check

  url "https://media.tenor.co/mac/bin/GIFforMac.dmg",
      verified: "media.tenor.co/mac/bin/"
  appcast "https://media.tenor.co/mac/gif_for_mac_appcast.xml"
  name "Tenor"
  desc "Send, share and save gifs from the menu bar"
  homepage "https://tenor.com/mac"

  depends_on macos: ">= :el_capitan"

  app "Tenor.app"

  uninstall quit: "com.riffsy.GIF-for-Mac"
end
