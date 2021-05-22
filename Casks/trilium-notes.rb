cask "trilium-notes" do
  version "0.47.3"
  sha256 "6d4585833d24fc388136d28251235e0b9c17ee92eec0e473aec3428ea8954240"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
