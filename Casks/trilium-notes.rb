cask 'trilium-notes' do
  version '0.33.6'
  sha256 'cb41390dc359c9878b6b16b4acd40c9ec0ae58fad20747279d57ba7902d61ca4'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
