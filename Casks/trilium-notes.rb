cask 'trilium-notes' do
  version '0.30.5'
  sha256 'ddc9bf355925ca679466913af4574277f5b334b67a639a1f9ed8b8055e17aa1a'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
