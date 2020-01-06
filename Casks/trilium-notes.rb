cask 'trilium-notes' do
  version '0.39.4'
  sha256 '0df3a2012c83d603d5182fce00023723c96c4c6556f0811f9ac5ed2ab5927672'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
