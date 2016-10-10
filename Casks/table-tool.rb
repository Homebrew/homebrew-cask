cask 'table-tool' do
  version '1.1.1'
  sha256 '044b3dae44221cab8f59b7e830ffa4c1d14fac0dcada20069db90c64bc4d3ff9'

  url "https://github.com/jakob/TableTool/releases/download/v#{version}/tabletool-#{version}.zip"
  appcast 'https://github.com/jakob/TableTool/releases.atom',
          checkpoint: '7392607502912d47225965601e76b31299b3491ff233e8a52ad4787135ff1a82'
  name 'Table Tool'
  homepage 'https://github.com/jakob/TableTool'

  app 'Table Tool.app'
end
