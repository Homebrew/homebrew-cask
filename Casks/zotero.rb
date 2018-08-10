cask 'zotero' do
  version '5.0.54'
  sha256 'e3d2ec5d8467da8089cce470cdcf988d0414417c26773dd450181502037e4f66'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
