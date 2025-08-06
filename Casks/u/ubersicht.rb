cask "ubersicht" do
  version "1.6.82"
  sha256 "39db5e0abf03f6390992511c946c19b97a89f84ebe2ac87219ebf921fffb972b"

  url "https://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name "Übersicht"
  desc "Run commands and display their output on the desktop"
  homepage "https://tracesof.net/uebersicht/"

  livecheck do
    url "https://raw.githubusercontent.com/felixhageloh/uebersicht/gh-pages/updates.xml.rss"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Übersicht.app"

  uninstall quit:       "tracesOf.Uebersicht",
            login_item: "Übersicht"

  zap trash: [
    "~/Library/Application Support/tracesOf.Uebersicht",
    "~/Library/Application Support/Übersicht",
    "~/Library/Caches/tracesOf.Uebersicht",
    "~/Library/Preferences/tracesOf.Uebersicht.plist",
    "~/Library/WebKit/tracesOf.Uebersicht",
  ]
end
