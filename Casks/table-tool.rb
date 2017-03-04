cask 'table-tool' do
  version '1.1.2'
  sha256 '7aa342aa3aaed6f6ecbf86c57a50de5f86add19b2ccb07c76c400f225fb828b9'

  url "https://github.com/jakob/TableTool/releases/download/v#{version}/tabletool-#{version}.zip"
  appcast 'https://github.com/jakob/TableTool/releases.atom',
          checkpoint: '018d9b9ef2158e97203d26fd981e285e034b8fa9ce41d31496683216186a2879'
  name 'Table Tool'
  homepage 'https://github.com/jakob/TableTool'

  app 'Table Tool.app'
end
