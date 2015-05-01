cask :v1 => 'vscode' do
  version '0.1'
  sha256 '45f560cfdd2a3108ed23ec5ecff461313267ca12082dafffd351252db751c357'

  url 'http://download.microsoft.com/download/0/D/5/0D57186C-834B-463A-AECB-BC55A8E466AE/VSCode-osx.zip'
  name 'Visual Studio Code'
  homepage 'https://code.visualstudio.com'
  license :other

  app 'Visual Studio Code.app'
end
