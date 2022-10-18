cask "trilium-notes" do
  version "0.55.1"
  sha256 "5716c0915d26c15ee4b1093a38bafe0a5ca50e65b099360274bae27b22791f7b"

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
