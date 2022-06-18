cask "trilium-notes" do
  version "0.52.3"
  sha256 "d163d2ac0d4870bffe43bc07ec183d801a93fe2ce1257462b8bcf08b3815ea5b"

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
