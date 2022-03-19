cask "trilium-notes" do
  version "0.50.2"
  sha256 "502efb14b77efd4a8ec8dc015480b2bb531244fb9af55476668be9004e28186c"

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
