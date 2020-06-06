cask 'trilium-notes' do
  version '0.42.6'
  sha256 'e3d23c1469b11b962fadd725f2de643da25e2e7362e3b3dac85a8cf6a243d3a2'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
