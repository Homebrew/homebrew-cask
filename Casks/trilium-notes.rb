cask 'trilium-notes' do
  version '0.35.2'
  sha256 'eea17a5013ab3cdc01b63c7ea4452826d4f174a66a1f03c118d140fce615a5be'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
