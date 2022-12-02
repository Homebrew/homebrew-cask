cask "trilium-notes" do
  version "0.57.2"
  sha256 "842d30fe93b961d8d0ca0f70cecaed579da8ec8c9324aabc2df477441a697dbf"

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
