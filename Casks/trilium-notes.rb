cask "trilium-notes" do
  version "0.48.4"
  sha256 "16ad9aba7261401795b402d600e64990cb9a4dc650697135558731d8eeecc18f"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
