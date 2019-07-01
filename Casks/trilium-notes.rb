cask 'trilium-notes' do
  version '0.33.5'
  sha256 '75c96d458b962ea43a4982a78a4c6a3ef4ad6f64961332cd9e34a47e3c2c52d6'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
