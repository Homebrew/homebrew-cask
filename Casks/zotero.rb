cask "zotero" do
  version "5.0.92"
  sha256 "a503aa38dd55f0f34b85f7724091cf4f81a8bf8f63ca845d3ddea70cce87e0c4"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast "https://www.zotero.org/download/"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  auto_updates true

  app "Zotero.app"
end
