cask "trilium-notes" do
  version "0.47.7"
  sha256 "3b847b03d2d090643fd262003fde8796df60d14b30f1e02980de80b553f1db1b"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
