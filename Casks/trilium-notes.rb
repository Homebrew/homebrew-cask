cask 'trilium-notes' do
  version '0.33.7'
  sha256 'abf03a88988b51d22856180636bbf4f7f2f7365e1b1a98e6ec12f882923374e7'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
