cask "trilium-notes" do
  version "0.56.1"
  sha256 "7a6aec6b14132b3d3d8b4c41989bd0c98acf100c5a1d4b2797408fc8ff534c07"

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
