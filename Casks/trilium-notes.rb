cask 'trilium-notes' do
  version '0.30.8'
  sha256 '43c4646ee6a860aa16c0d8dd6c681e32b106bc47d04f907c735507e02b6adf15'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
