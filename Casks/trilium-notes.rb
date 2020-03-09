cask 'trilium-notes' do
  version '0.40.5'
  sha256 'a77d911f10652fc7de1840da6f6f2f272c1fda143be38b35129c8ad69f3b7fce'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
