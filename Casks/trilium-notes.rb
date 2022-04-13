cask "trilium-notes" do
  version "0.50.3"
  sha256 "639b708c300172bcfb22a5abb90e8ac125cd9570d4bfe94f49b08f4bc0059263"

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
