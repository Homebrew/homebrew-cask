cask 'trilium-notes' do
  version '0.31.4'
  sha256 '0bed589e0f2d069dca5f28a0cb9ea3b7dd4778f983a8f6e2dc8e9ede481b50fe'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
