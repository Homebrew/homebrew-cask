cask 'trilium-notes' do
  version '0.43.1'
  sha256 '0aa1b38eb225fd8847a374d0ac3bfbb26136a0452b8e2da016c8618f5763b342'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
