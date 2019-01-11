cask 'zotero' do
  version '5.0.60'
  sha256 '8a62c4e73abeae1bb552c522fd51be31ce6f490d2657a8317faf1255e654c07e'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
