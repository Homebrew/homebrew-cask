cask "trilium-notes" do
  version "0.48.9"
  sha256 "ff33aa89419afbe0a03e7f27319bc141fbce4b7c66e29bc625c8ba5d8a1da5f0"

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
