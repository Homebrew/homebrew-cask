cask 'trilium-notes' do
  version '0.28.2'
  sha256 'f47e06d676a94997001b860d20dcd8e0ea2f3ba72f8086962424aa939bb8328a'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
