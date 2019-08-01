cask 'trilium-notes' do
  version '0.34.1'
  sha256 '4a9cd69db5cd9124e14fa15e6641d7c8dc377205da540983863bfec5e9d6a6a9'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
