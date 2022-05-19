cask "zotero" do
  version "6.0.8"
  sha256 "329f62cd441392ba9edfbafce7da48116694c6785bc65a9aed4c08f87d049310"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/"
    regex(/standaloneVersions.*?"mac"\s*:\s*"(\d+(?:\.\d+)*)"/i)
  end

  auto_updates true

  app "Zotero.app"

  zap trash: [
    "~/Library/Application Support/Zotero",
    "~/Library/Caches/Zotero",
    "~/Library/Preferences/org.zotero.zotero.plist",
    "~/Library/Saved Application State/org.zotero.zotero.savedState",
  ]
end
