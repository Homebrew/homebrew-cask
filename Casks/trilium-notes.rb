cask "trilium-notes" do
  version "0.45.5"
  sha256 "14122579ac299a2ff696fcb879d3d1c007559308ce2934f631f4ebaf8940af58"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
