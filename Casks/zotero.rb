cask 'zotero' do
  version '5.0.23'
  sha256 '605e83f2465b7793724d30d40e89f862e633335cbf56d4ebfeb7d67eea32bfd6'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '8ce5e1e5a94cc103d8c4f0df76794074215e51a4dadd64deab45b647f35b13a9'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
