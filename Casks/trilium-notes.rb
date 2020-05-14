cask 'trilium-notes' do
  version '0.42.2'
  sha256 '9a015305116a0f06b64fdd6f0704c61a9666b2d079726e9cc3c1f95c3fde3c11'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
