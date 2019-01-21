cask 'trilium-notes' do
  version '0.27.4'
  sha256 'c915bbb31abad55c44af97fd57aba8c3719974666e9baabc1b37d68ea80b6f75'

  url "https://github.com/zadam/trilium/releases/download/v#{version}/trilium-mac-x64-#{version}.7z"
  appcast 'https://github.com/zadam/trilium/releases.atom'
  name 'Trilium Notes'
  homepage 'https://github.com/zadam/trilium'

  app 'trilium-mac-x64/Trilium Notes.app'
end
