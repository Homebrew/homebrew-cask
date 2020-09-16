cask "ubersicht" do
  version "1.5.62"
  sha256 "b2c35433f0b091cdd7b898bcacd91869efa92b6833b49271953c53e6ad600c0c"

  url "https://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast "https://tracesof.net/uebersicht/updates.xml.rss"
  name "Übersicht"
  desc "Keep an eye on what's happening on your machine and in the world"
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
