cask 'trilium-notes' do
  version '0.32.4'
  sha256 'e6a5a6ad6db84be9a7a50dde505f045f977fb1c6ee7a78e120a518e1c78b7d32'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
