cask 'trilium-notes' do
  version '0.39.3'
  sha256 '495082256b9016a7ea8b2699fc68e48dac870c0fba0eae06554bf647f10eed0d'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
