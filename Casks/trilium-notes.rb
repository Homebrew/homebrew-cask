cask 'trilium-notes' do
  version '0.38.3'
  sha256 'b771ea76546ca956eebc38703bf5ac6f009919fb4cf569f463eacff44a632638'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
