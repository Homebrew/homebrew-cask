cask 'trilium-notes' do
  version '0.36.3'
  sha256 'a95761a9f317623ac2330b4610c697aabb3787d2938a7b56b6d6ff474b530675'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
