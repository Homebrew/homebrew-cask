cask 'trilium-notes' do
  version '0.36.2'
  sha256 '645e1f07c69cc81a2b4a067d7e0425fcfe8203c43b63872700ccf640078af30b'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
