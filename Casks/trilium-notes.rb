cask "trilium-notes" do
  version "0.51.2"
  sha256 "11e4f12f3fa6a43a540053b82f002e34d5ad65bd32993a21daa77646dd472b8a"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "trilium-mac-x64/Trilium Notes.app"
end
