cask 'trilium-notes' do
  version '0.42.3'
  sha256 'c7ba978f4debd0fb24f0197d312d4def0c9683452272fe9055875478f757a147'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
