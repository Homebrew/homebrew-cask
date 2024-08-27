cask "zotero" do
  version "7.0.3"
  sha256 "38e3aa5d408a99281887c2caa85bc59e166d5fac841241e9a025e37014d09630"

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
