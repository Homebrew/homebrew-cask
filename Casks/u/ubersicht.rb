cask "ubersicht" do
  version "1.6.77"
  sha256 "8f11b163561808cca526cee49140b221cccda3bbb69f5a9ca0bd8a750e7c87bd"

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
