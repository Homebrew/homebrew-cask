cask 'trilium-notes' do
  version '0.36.5'
  sha256 '49fd53dd53a67200a54d4911571870fb36039cbf6b0ba945c0c908b856125ba8'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
