cask "trilium-notes" do
  version "0.52.2"
  sha256 "5357234393a36c4d936bba128e0b67da476d2c982b9ddf4069e2d0ec8a935331"

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
