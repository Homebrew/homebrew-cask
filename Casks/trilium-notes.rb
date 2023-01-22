cask "trilium-notes" do
  version "0.58.5"
  sha256 "58a03e6922212a2157a299c4a1e139c17e0004c159226b47048984045c838174"

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
