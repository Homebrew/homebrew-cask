cask 'trilium-notes' do
  version '0.30.4'
  sha256 '8879710a4688dcc3c4fac61a33145d3bbc2d68d5077984706ccf85ed9beb02ba'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
