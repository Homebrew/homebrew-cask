cask 'zotero' do
  version '5.0.50'
  sha256 'dcc87da3d7710cb0ebcd86e675a897e1f8f98c7ea2cc2cd0066e3c34b65dcebb'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
