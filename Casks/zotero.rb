cask :v1 => 'zotero' do
  version '4.0.23'
  sha256 'f97ef96f005674ad8227ae6eb2096c81d334b771347c566c3581bee5100675e3'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  homepage 'http://www.zotero.org/'
  license :affero

  app 'Zotero.app'
end
