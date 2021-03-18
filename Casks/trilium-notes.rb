cask "trilium-notes" do
  version "0.46.5"
  sha256 "0bbb37ff4a0ffb25873195d18ac54a41edb9b835502fe2c5ac21c1ecdafb52fc"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
