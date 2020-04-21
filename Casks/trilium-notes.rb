cask 'trilium-notes' do
  version '0.41.5'
  sha256 '64ecea14a53af6e371af4029f5b4abf85c93ea8e88f985ef34a72fa0d4d7c55e'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
