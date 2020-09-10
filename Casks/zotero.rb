cask "zotero" do
  version "5.0.90"
  sha256 "26c3d59834b81d46cff3fd53791e2d758a971943102d21093d0b8b23b18f77f9"

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast "https://www.zotero.org/download/"
  name "Zotero"
  desc "Collect, organize, cite, and share research sources"
  homepage "https://www.zotero.org/"

  auto_updates true

  app "Zotero.app"
end
