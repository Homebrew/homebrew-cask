cask "trilium-notes" do
  version "0.57.5"
  sha256 "fde732bb60f7582763d64c7d25fef034084a862a2a656e3097edef6e4ae0fff7"

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
