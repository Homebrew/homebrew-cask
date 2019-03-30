cask 'trilium-notes' do
  version '0.30.6'
  sha256 'be868cf7e1e2b11cd9a01588d5d168d0e6f33d589d41b0e24b6e3f8855529156'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
