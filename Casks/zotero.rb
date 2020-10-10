cask "zotero" do
  version "5.0.91"
  sha256 "0c76e4ffb2ad79a96922d5ea3cb5533d8b76a0a902b99baf02817a8a79a1eff8"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast "https://www.zotero.org/download/"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  auto_updates true

  app "Zotero.app"
end
