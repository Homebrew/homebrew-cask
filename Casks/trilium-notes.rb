cask "trilium-notes" do
  version "0.54.2"
  sha256 "1dd0f925762ddadf485c6546117f7b0e5bbb556ed95660839921cc027c8f727f"

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
