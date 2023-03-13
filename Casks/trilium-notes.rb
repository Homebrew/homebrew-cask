cask "trilium-notes" do
  version "0.59.1"
  sha256 "84b8b093744934d2c41cf18267549f969fd20ef28fbf94d7bfc5ce5a36859704"

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
