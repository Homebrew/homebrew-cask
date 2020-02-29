cask 'zotero' do
  version '5.0.83'
  sha256 'adf3e55dbb3a33c8702e0bcee9202f0527f622e749da648e41ba6fc02217a04f'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
