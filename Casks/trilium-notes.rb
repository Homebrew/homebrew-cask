cask "trilium-notes" do
  version "0.45.6"
  sha256 "b3f6ce1e74a1252f7bd6faf6dcf240c9f9c695cfb22a97d8e5b22e12576d526c"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
