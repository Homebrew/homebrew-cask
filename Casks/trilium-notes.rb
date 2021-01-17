cask "trilium-notes" do
  version "0.45.8"
  sha256 "e390cd92365c6c7d1175914555f557011dd5ddf133f85f4f481b38ef8f13367c"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
