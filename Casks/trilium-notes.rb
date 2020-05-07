cask 'trilium-notes' do
  version '0.42.1'
  sha256 '1942df64d989582489300d7508548370f04963f6ac243c5e6d5a60f0d5ccd4b5'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
