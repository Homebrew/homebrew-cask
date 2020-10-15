cask "trilium-notes" do
  version "0.44.8"
  sha256 "556f6d7a131e1ea520f68e3c00c5fa047e317616709bf63661ed3cb219064be1"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
