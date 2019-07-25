cask 'zotero' do
  version '5.0.72'
  sha256 'a20a723ac9618b51e1b284efebb3c526171d934ce8299a5d6abeb6a44cef5ce7'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
