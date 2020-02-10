cask 'trilium-notes' do
  version '0.40.3'
  sha256 '316ccd5eeb1d4806909f988c79f4678d6ff07312a67c1ee709cf0352b3e2a46c'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
