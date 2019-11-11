cask 'trilium-notes' do
  version '0.36.4'
  sha256 'aed0cc98625390b6fa29dca485f10671cb41eb728d860ff9506aa653f601c35d'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
