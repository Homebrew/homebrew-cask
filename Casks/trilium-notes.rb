cask 'trilium-notes' do
  version '0.39.5'
  sha256 '02ad1f7211cc322957151016a2fc4886b37c1e600eae0be944cd288de958bc83'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
