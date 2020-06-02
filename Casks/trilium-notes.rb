cask 'trilium-notes' do
  version '0.42.5'
  sha256 '3f6a46a5b6d4e6454cf2d91098481120635c7c5b7d0d72801c76b305adaa2aaf'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
