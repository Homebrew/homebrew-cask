cask 'trilium-notes' do
  version '0.31.3'
  sha256 '6b26a73d751711cc5c6e628d54e24431867085b84a7c0904e812ac5f441a1502'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
