cask 'trilium-notes' do
  version '0.37.6'
  sha256 'abf6349ce5ef79455169e8820033aceb103289dcbff8879bb8c0d79a2c7295c7'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
