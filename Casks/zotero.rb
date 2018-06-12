cask 'zotero' do
  version '5.0.49'
  sha256 'a550c6419908995004a7effe66aa832fdbbea7fc5924c628423c7d5fd9fdc56c'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
