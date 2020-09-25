cask "trilium-notes" do
  version "0.44.4"
  sha256 "a5a5f09cc97726bc67e7938f6ad5077a5b96f4746522dfd5907a7763559879ba"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
