cask "trilium-notes" do
  version "0.43.4"
  sha256 "d6de0347999b21ad8ecb02eb914413dfe9c80740e2a60fbad3ed60ca19617b7a"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast "https://github.com/zadam/trilium/releases.atom"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
