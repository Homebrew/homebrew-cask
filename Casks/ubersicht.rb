cask "ubersicht" do
  version "1.5.63"
  sha256 "29dc2707f483aabea4ad1ba03b695945836403acaedb4a26a3bd8c73ebd08fd5"

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
