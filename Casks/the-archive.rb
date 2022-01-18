cask "the-archive" do
  version "1.7.5"
  sha256 "1c3b89131c119d50bc33efcabfb3e73d7c7dd0d81c7c52b0741cfa3220fe5570"

  url "https://dlyfuw95744jo.cloudfront.net/TheArchive-v#{version}.dmg",
      verified: "dlyfuw95744jo.cloudfront.net/"
  name "The Archive"
  desc "Note Taking: Nimble, Calm, Plain.txt"
  homepage "https://zettelkasten.de/the-archive/"

  livecheck do
    url "https://zettelkasten.de/the-archive/download"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "The Archive.app"

  uninstall quit: [
    "de.zettelkasten.TheArchive",
    "de.zettelkasten.TheArchive.QuickEntryHelper",
  ]

  zap trash: [
    "~/Library/Application Support/TheArchive",
    "~/Library/Caches/de.zettelkasten.TheArchive",
    "~/Library/Group Containers/FRMDA3XRGC.de.zettelkasten.TheArchive.prefs",
    "~/Library/Logs/TheArchive",
    "~/Library/Preferences/de.zettelkasten.TheArchive.plist",
    "~/Library/Preferences/de.zettelkasten.TheArchive.QuickEntryHelper.plist",
    "~/Library/Preferences/group.de.zettelkasten.TheArchive.prefs.plist",
    "~/Library/Saved Application State/de.zettelkasten.TheArchive.savedState",
    "~/Library/WebKit/de.zettelkasten.TheArchive",
  ]
end
