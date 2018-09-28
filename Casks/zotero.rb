cask 'zotero' do
  version '5.0.55.1'
  sha256 '41db4ec06e42eee1e68a2bfb6b7f30112408f58c1ce352bb8336bd8add3a7576'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
