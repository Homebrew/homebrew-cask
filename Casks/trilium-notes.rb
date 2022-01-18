cask "trilium-notes" do
  version "0.49.5"
  sha256 "748a18a8d0fdf218f5be93639c482d0cea974bfa70f96b9955d6e51ed7fe63c6"

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
