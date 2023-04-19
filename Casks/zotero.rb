cask "zotero" do
  version "6.0.25"
  sha256 "a50af7bcc5409d173a643854acd294f0095b03993f0697edf552b6c816e1980d"

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
