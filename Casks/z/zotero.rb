cask "zotero" do
  version "7.0.1"
  sha256 "0c0ce6bd825c6a5615a02e7e745a1b1f04119faadc5559beb31f0d75e0884d37"

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
