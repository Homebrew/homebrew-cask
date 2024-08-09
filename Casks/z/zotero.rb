cask "zotero" do
  version "7.0"
  sha256 "c68a6334c425ed189f2866b106ae4f52c9caefa2f18bfb4f2480d1f6a8d1e316"

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
