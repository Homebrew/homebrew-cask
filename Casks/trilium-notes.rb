cask "trilium-notes" do
  version "0.46.7"
  sha256 "c1da803136df4ef0cef1129fbf5f8472748c1d473d900cd250d8c9a61f11cbea"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
