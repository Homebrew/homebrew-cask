cask 'table-tool' do
  version '1.2.1'
  sha256 'e405f5aff5b74a8bb57f9e7dbc483a47d9c7d3d2ef095728d04e030e84017de1'

  url "https://github.com/jakob/TableTool/releases/download/v#{version}/tabletool-#{version}.zip"
  appcast 'https://github.com/jakob/TableTool/releases.atom',
          checkpoint: '11fb30c84b07c0291295a349a7a10ba001b6f013de6597dc176fc9cf6d0f6ee0'
  name 'Table Tool'
  homepage 'https://github.com/jakob/TableTool'

  app 'Table Tool.app'
end
