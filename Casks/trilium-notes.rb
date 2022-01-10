cask "trilium-notes" do
  version "0.49.4"
  sha256 "922cf9bfec9ad8e63721fe5c76df958237052db413742f0144d1851d43a35ec0"

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
