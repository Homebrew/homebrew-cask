cask "trilium-notes" do
  version "0.58.4"
  sha256 "ac2998d0db959292c7d30f209da6dda353780f5c9855e51d45f48a805207bfbf"

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
