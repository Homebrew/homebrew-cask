cask "trilium-notes" do
  version "0.49.3"
  sha256 "10e675a071348b7992ce8560761e07aa70c34e59805ff2f0484deefe9b8a15c7"

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
