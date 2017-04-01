cask 'table-tool' do
  version '1.1.2'
  sha256 '7aa342aa3aaed6f6ecbf86c57a50de5f86add19b2ccb07c76c400f225fb828b9'

  url "https://github.com/jakob/TableTool/releases/download/v#{version}/tabletool-#{version}.zip"
  appcast 'https://github.com/jakob/TableTool/releases.atom',
          checkpoint: '21684c0cab56de4fd2cf9e73f3df14969995c17ca378dc752a56274c2f0965c9'
  name 'Table Tool'
  homepage 'https://github.com/jakob/TableTool'

  app 'Table Tool.app'
end
