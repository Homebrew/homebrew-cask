cask :v1 => 'zotero' do
  version '4.0.27'
  sha256 '935388773f85219a3905ceb9bb8929555a1fefed0a7b0dc98a66c452f7ff240f'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end
