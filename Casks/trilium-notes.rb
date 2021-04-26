cask "trilium-notes" do
  version "0.46.9"
  sha256 "adc73ec87f63184f3d72c4b45d9330ef4aa7e2ec685f0b49c1783721e97a9275"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
