cask 'trilium-notes' do
  version '0.40.2'
  sha256 'cd4fbc0e08275cf91e18880c54d4293a2e75c4a18216835732cf6ba5d1706bc8'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
