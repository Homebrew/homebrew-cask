cask "trilium-notes" do
  version "0.47.8"
  sha256 "d1d7737f166dbcf6be5bbdff6b55e365b5de9cda8c5e74f6073f8d1607470c54"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
