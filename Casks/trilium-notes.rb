cask "trilium-notes" do
  version "0.48.6"
  sha256 "65285c36c0627335447c7507657b2615891457c0ff26d2f753d68863071cf3f7"

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
