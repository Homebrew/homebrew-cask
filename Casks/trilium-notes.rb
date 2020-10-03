cask "trilium-notes" do
  version "0.44.5"
  sha256 "f871f1b196b077ec5936bc282db5d119a734cf631a35963cdb0e0edc6f4bde27"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
