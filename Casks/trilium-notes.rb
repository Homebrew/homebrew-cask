cask "trilium-notes" do
  version "0.45.1"
  sha256 "be2959273bca400649dd7fa806e59642b07c7156738912bdd327a81108cbb369"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
