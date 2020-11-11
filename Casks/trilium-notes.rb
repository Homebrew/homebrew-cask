cask "trilium-notes" do
  version "0.45.3"
  sha256 "e3a1db799d5a6813988793fab50692056474928969b7bc803ea52ab20873911c"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
