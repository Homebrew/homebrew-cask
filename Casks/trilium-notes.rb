cask "trilium-notes" do
  version "0.47.6"
  sha256 "1cb4c46db1c8f05c484beef9ccf9bcc3972b32d10639c9cb225ba0e3a0046053"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
