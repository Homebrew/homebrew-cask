cask 'trilium-notes' do
  version '0.37.8'
  sha256 '98fb68b3b11722fc0fa6aee9346ccb214c9391bb9e2b133e0aa9198a7f96cdf4'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
