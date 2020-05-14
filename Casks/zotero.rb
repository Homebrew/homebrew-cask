cask 'zotero' do
  version '5.0.86'
  sha256 'd221c7606e56d13a996f6f79bedb3e4298fea2321e2036a2f73fb68932c4ffa5'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
