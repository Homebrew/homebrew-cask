cask "trilium-notes" do
  version "0.43.3"
  sha256 "6e9fa0ceb7bf3f34a7978c280d0627af76a9fc0c2a096acf65738f364349d32a"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
