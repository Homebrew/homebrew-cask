cask "trilium-notes" do
  version "0.47.2"
  sha256 "3829aac257aeb67c09e18ae03f963b46813a27727f39808f71adf21193b90879"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
