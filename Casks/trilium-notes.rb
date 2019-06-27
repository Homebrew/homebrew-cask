cask 'trilium-notes' do
  version '0.33.4'
  sha256 '6b62b31dd3a9cb89802d27551c3aa2030af6040e3180dbde58ca04c28c384da4'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
