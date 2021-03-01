cask "trilium-notes" do
  version "0.45.10"
  sha256 "8a6b99123d843f84e7800c3d3716e859a773bb35ad771ed6c571d38ea6f9456c"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
