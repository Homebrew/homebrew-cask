cask 'trilium-notes' do
  version '0.37.5'
  sha256 '0863e3ee0c6393f09d2677b3c7b1fbdced93c4a4240bd19059f2e4af0b36b1b5'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
