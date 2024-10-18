cask "zotero" do
  version "7.0.8"
  sha256 "cf51c0907cf824645f4099dad9c20d6539983f3ca3f687e9ee624737f98dc8ea"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  name "Zotero"
  desc "Collect, organise, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/"
    regex(/standaloneVersions.*?"mac"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  conflicts_with cask: "zotero@beta"
  depends_on macos: ">= :el_capitan"

  app "Zotero.app"

  zap trash: [
    "~/Library/Application Support/Zotero",
    "~/Library/Caches/Zotero",
    "~/Library/Preferences/org.zotero.zotero.plist",
    "~/Library/Saved Application State/org.zotero.zotero.savedState",
  ]
end
