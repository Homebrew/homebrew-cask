cask "ubersicht" do
  version "1.6.68"
  sha256 "5f7c56c18af217a2dacfc96cfead49aeb819579caf9355a123f5a252ec96bda8"

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
