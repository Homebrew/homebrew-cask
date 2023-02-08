cask "trilium-notes" do
  version "0.58.7"
  sha256 "eaba7e19ed8b88b8663915e6a831a6d0768c220dc0d2be5d21c711794ee31ece"

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
