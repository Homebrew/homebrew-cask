cask 'trilium-notes' do
  version '0.29.1'
  sha256 'cb6920bdf2357fc781a9c0c97dd91a9a4065e9a927b2b3c7830620d84bce1fbf'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
