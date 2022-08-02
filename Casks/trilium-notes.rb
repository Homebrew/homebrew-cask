cask "trilium-notes" do
  version "0.53.2"
  sha256 "f1b65caaa4b74ce446062d3083a8db73f7618cef03d0f9f1a0dc2efa1a6a74ff"

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
