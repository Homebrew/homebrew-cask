cask 'trilium-notes' do
  version '0.40.4'
  sha256 '42289fbae769a6a6a09242de9e2bf36fdfac2495f285c75b2d508d91ccddb99b'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
