cask "trilium-notes" do
  version "0.58.8"
  sha256 "18ed31274c974af9ee4f42bf778ee7eccd9f01d12070278e92c2426128138e59"

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
