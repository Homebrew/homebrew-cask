cask "trilium-notes" do
  version "0.52.4"
  sha256 "c43f76e950a066670c7de0c965d6457eb3c78742d31ae38ec8a844c4be05cc74"

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
