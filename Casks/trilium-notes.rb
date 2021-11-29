cask "trilium-notes" do
  version "0.48.7"
  sha256 "5fabe5422f8bc2c75e6ce853e6fa889ec9708e1bd44f6bd3d77ba97a87f62ad8"

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
