cask "trilium-notes" do
  version "0.46.6"
  sha256 "54a582b39f9281f255c502f316a96d2a37ed15a1cb8986b9db39fc9cb2faa07a"

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  name "Trilium Notes"
  desc "Personal knowledge base"
  homepage "https://github.com/zadam/trilium"

  app "trilium-mac-x64/Trilium Notes.app"
end
