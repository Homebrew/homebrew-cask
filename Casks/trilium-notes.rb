cask "trilium-notes" do
  version "0.47.5"
  sha256 "b4cd236616feedc1680dd9a7fb99825245830af04d419a83f232abe16e6b595c"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
