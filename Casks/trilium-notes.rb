cask "trilium-notes" do
  version "0.44.6"
  sha256 "d7be79ee6d4864859a9a0e21c8d9c2e90033c2c9655bfd52e8dde2808b552752"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
