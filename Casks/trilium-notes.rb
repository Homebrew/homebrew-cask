cask "trilium-notes" do
  version "0.44.9"
  sha256 "6529b9c8044e6d27a016873a866c91f52a18d33d23dae2086423c0cc38e48804"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
