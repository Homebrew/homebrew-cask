cask 'zotero' do
  version '5.0.81'
  sha256 '4e967ef0e43935923eef1610eb802280aba82e1ebad5d1bb6c96e8745a5bef04'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
