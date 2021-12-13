cask "trilium-notes" do
  version "0.48.8"
  sha256 "7de65f57bdd8f52b5dfba8e39547fa302f975ef2463aa7dfce259d52a2040cd2"

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
