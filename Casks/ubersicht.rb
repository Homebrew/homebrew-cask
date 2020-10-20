cask "ubersicht" do
  version "1.6.65"
  sha256 "d27740a42d9d75519b125562c9ca18c7b74205b2a29b91122ffe686c3ac73ce1"

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
