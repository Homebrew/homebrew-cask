cask 'trilium-notes' do
  version '0.38.2'
  sha256 'c9c5981e60131ab4a309046765cd137c55ca5cc7d48db257b55670a44607c343'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
