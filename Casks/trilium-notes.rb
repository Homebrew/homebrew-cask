cask "trilium-notes" do
  version "0.57.3"
  sha256 "0d1c883bfe8d50e211a6807e0f4a3068ab6e2e7b727221f8b5e0b096e47685c3"

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
