cask "trilium-notes" do
  version "0.45.9"
  sha256 "3aa3a1d7fa137d8391a66c61d803021f9eb838773e67ba1e663cf5e251eb520a"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
