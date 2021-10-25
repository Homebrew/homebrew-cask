cask "trilium-notes" do
  version "0.48.3"
  sha256 "57ddae62d2d4e51a75950d15e6f7af3ac898df518aa182fb920b98a4e99795ad"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
