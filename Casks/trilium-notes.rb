cask 'trilium-notes' do
  version '0.42.4'
  sha256 '3965170e1ba0d4f11b7ddb17107241c4423fd5e9eee12a1957d322a24773af8d'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
