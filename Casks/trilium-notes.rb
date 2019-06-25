cask 'trilium-notes' do
  version '0.33.3'
  sha256 '36ce614e6d0308bee4af2e383dfbb2d112d2e3ce81350838d60cc5953c570720'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
