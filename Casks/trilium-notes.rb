cask 'trilium-notes' do
  version '0.30.7'
  sha256 '56d75fa70a6a1ae9d55f00a664cca27a10044128178923ddc2e7f8fd94f33f9c'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
