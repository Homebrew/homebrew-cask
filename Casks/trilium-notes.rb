cask "trilium-notes" do
  version "0.57.4"
  sha256 "b7753546e5d5b94e9a8034a5cdc60c29f606310ad0d41961215d1e12c3a4a68c"

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
