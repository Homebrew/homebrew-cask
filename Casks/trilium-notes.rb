cask 'trilium-notes' do
  version '0.43.2'
  sha256 'c1a0fe1399148cfa94f4479f61c8eea8fbe2649591d28fd43e854d7963bb34e5'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
