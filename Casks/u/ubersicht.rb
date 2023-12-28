cask "ubersicht" do
  version "1.6.82"
  sha256 "39db5e0abf03f6390992511c946c19b97a89f84ebe2ac87219ebf921fffb972b"

  url "https://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name "Übersicht"
  desc "Run commands and display their output on the desktop"
  homepage "https://tracesof.net/uebersicht/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Uebersicht[._-]v?(\d+(?:\.\d+)+)\.app\.zip}i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Übersicht.app"

  uninstall quit:       "tracesOf.Uebersicht",
            login_item: "Übersicht"

  zap trash: [
    "~/Library/Application Support/Übersicht",
    "~/Library/Application Support/tracesOf.Uebersicht",
    "~/Library/Caches/tracesOf.Uebersicht",
    "~/Library/Preferences/tracesOf.Uebersicht.plist",
    "~/Library/WebKit/tracesOf.Uebersicht",
  ]
end
