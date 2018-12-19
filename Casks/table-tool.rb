cask 'table-tool' do
  version '1.2.1'
  sha256 'e405f5aff5b74a8bb57f9e7dbc483a47d9c7d3d2ef095728d04e030e84017de1'

  url "https://github.com/jakob/TableTool/releases/download/v#{version}/tabletool-#{version}.zip"
  appcast 'https://github.com/jakob/TableTool/releases.atom'
  name 'Table Tool'
  homepage 'https://github.com/jakob/TableTool'

  app 'Table Tool.app'
end
