cask "trilium-notes" do
  version "0.45.4"
  sha256 "1ec1f8c501e09fc9a9bcb088531d2504452a44ab62c81b11583a294dcfe7ef98"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
