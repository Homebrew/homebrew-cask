cask 'zotero' do
  version '4.0.29.11'
  sha256 '1895e2cecc980b1df72e3e2943cf36b5f5e10566e15b87bdad98244263d74bef'

  url "https://download.zotero.org/standalone/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: '25a7e1b1827d6c3fd5fabe8fa60ea1b1b926a90b31f75433308d9e4a4e174f25'
  name 'Zotero'
  homepage 'https://www.zotero.org/'
  license :affero

  auto_updates true

  app 'Zotero.app'
end
