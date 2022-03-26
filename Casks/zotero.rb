cask "zotero" do
  version "6.0.3"
  sha256 "d66ccc021eb68e673211fde1cdfe2c986662c01ba3ed3594c24e001b93f35c68"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  livecheck do
    url "https://www.zotero.org/download/"
    strategy :page_match
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
