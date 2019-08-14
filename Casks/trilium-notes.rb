cask 'trilium-notes' do
  version '0.34.3'
  sha256 '4bb5db482f6b6c2898f8f26db24dc030767c14f86bd0817c64225c744e942717'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
