cask "trilium-notes" do
  version "0.45.2"
  sha256 "9ed68ce5ebdf40d26ec1219a44a8ff9eba0d90c4e4d3d9150ee2155a908f788d"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
