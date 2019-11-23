cask 'trilium-notes' do
  version '0.37.4'
  sha256 '62bb1eb445664d1e442e7d70bc78c913893fc417bbf3aa588ef376a3e7b583f3'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
