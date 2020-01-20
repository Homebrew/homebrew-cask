cask 'trilium-notes' do
  version '0.40.1'
  sha256 '6fcb05df2310a40a41d5ac5310943817e4648468b8b4c45f9ef072acae7dc8bc'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
