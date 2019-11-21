cask 'trilium-notes' do
  version '0.37.3'
  sha256 '963d70a6a8bc2ff5675ec5ed49112e0b1803ca0bce3951ac2edb1876748c7627'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
