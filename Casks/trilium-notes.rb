cask "trilium-notes" do
  version "0.56.2"
  sha256 "377c6464bec545d435ea153ae70e5d2e95a6fbb079bb75560d699112ae04e9eb"

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
