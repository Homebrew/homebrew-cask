cask 'trilium-notes' do
  version '0.35.1'
  sha256 'a3df74299669eacf9c7d8d4896362f458636da0c4a60a5d00901f0f2a2ae13c7'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
