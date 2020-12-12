cask "ubersicht" do
  version "1.6.66"
  sha256 "d02eaec51c725053906c14a2d0a34cef3b98674b87bdd1118d0318cd07ab6a13"

  url "https://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast "https://tracesof.net/uebersicht/updates.xml.rss"
  name "Übersicht"
  desc "Run commands and display their output on the desktop"
  homepage "https://tracesof.net/uebersicht/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Übersicht.app"

  uninstall login_item: "Übersicht",
            quit:       "tracesOf.Uebersicht"

  zap trash: [
    "~/Library/Application Support/Übersicht",
    "~/Library/Application Support/tracesOf.Uebersicht",
    "~/Library/Caches/tracesOf.Uebersicht",
    "~/Library/Preferences/tracesOf.Uebersicht.plist",
    "~/Library/WebKit/tracesOf.Uebersicht",
  ]
end
