cask 'trilium-notes' do
  version '0.31.6'
  sha256 '4a24be9aade1b1b5d2f24064b5a265722228dd7323d0af581137ea317a7e1b29'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
