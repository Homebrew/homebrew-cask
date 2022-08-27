cask "trilium-notes" do
  version "0.54.3"
  sha256 "a70d0ac0bb0f1fe9988d34f17e1ec462f68203cd56f0534b711d8715c1505ee9"

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
