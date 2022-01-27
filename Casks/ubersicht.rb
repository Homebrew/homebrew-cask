cask "ubersicht" do
  version "1.6.69"
  sha256 "caa7507d372ee9650d14ec50b4d09378e66209549faad40ce0f4917eb620f04b"

  url "https://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name "Übersicht"
  desc "Run commands and display their output on the desktop"
  homepage "https://tracesof.net/uebersicht/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Uebersicht[._-]v?(\d+(?:\.\d+)+)\.app\.zip}i)
  end

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
