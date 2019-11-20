cask 'trilium-notes' do
  version '0.37.2'
  sha256 '00346f43fd2481e419375af42f6512c54d7b2fb8e0e446b60b755e8df31f01d7'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
