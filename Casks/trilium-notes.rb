cask 'trilium-notes' do
  version '0.34.2'
  sha256 '5737d2f2cc1e0be15d9a811f7f661468474c349fbf315b32119beb513714dd62'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
