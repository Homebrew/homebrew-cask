cask "trilium-notes" do
  version "0.48.5"
  sha256 "d5ce56581a167b900de9db228b14afa3fc3a8ce239c5b08dbd8f3505e9f427d2"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
