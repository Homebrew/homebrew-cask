cask 'trilium-notes' do
  version '0.41.6'
  sha256 'f8790538fac69cf3421f455b80d1bedea56140888347eb0cdeb5c0fce5177230'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
