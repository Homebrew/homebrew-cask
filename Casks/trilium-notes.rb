cask 'trilium-notes' do
  version '0.28.3'
  sha256 '1aba9af4bdd8a05c45cf67e83038ff0f8cc1a162bae1a0f66de04a4d2c5fc3a2'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
