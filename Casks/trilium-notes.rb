cask "trilium-notes" do
  version "0.47.4"
  sha256 "63f4889b63d327667eca4d85799adacbb84334ce9c2903eda271b124693f1397"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
