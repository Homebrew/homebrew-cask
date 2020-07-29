cask 'trilium-notes' do
  version '0.42.7'
  sha256 '35b9883dea37a647761c6f0b54edf2446eb5ef66ee9ebb727bda51d2858b7e0b'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
