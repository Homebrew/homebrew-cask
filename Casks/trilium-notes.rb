cask 'trilium-notes' do
  version '0.31.5'
  sha256 'b4ce6153110803202f5c59204e6d6e02ec4388b2f3d846e2a08d842869b6b3ac'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
