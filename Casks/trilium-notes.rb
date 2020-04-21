cask 'trilium-notes' do
  version '0.40.7'
  sha256 '0ad1621ff9efa71ab77ba3184bb2be87931f655198a6b524c2cba04fb3f0ceda'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.zip"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
