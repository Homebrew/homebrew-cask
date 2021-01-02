cask "trilium-notes" do
  version "0.45.7"
  sha256 "ecb2f50c79243c26237e3d58c3bcf6e17c02764cbb1c23f6fde8673d2049a0de"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
