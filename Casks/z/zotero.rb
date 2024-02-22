cask "zotero" do
  version "6.0.32"
  sha256 "4a2a25c4e52b920120c9ee4b9d009d1af9ec4a892a0b3bcf2fe6b5e5bc949f93"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  name "Zotero"
  desc "Collect, organise, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/"
    regex(/standaloneVersions.*?"mac"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  conflicts_with cask: "zotero-beta"
  depends_on macos: ">= :el_capitan"

  app "Zotero.app"

  zap trash: [
    "~/Library/Application Support/Zotero",
    "~/Library/Caches/Zotero",
    "~/Library/Preferences/org.zotero.zotero.plist",
    "~/Library/Saved Application State/org.zotero.zotero.savedState",
  ]
end
