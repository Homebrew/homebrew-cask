cask "trilium-notes" do
  version "0.50.1"
  sha256 "1915fec61289550b00567b70e3f7cd4e6120fa50577f8f73e6d424b320f5b686"

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
