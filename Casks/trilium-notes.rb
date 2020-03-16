cask 'trilium-notes' do
  version '0.40.6'
  sha256 '571c2f0ae77914d97b3101e6b4cdc90074eeaad6e6e7eb38c5ef35a40e93ef9b'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
