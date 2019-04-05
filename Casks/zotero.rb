cask 'zotero' do
  version '5.0.65'
  sha256 'f397349a15088fb8fb5615d725777e7085c63cc968054ffaaabd09fd48ddf2ba'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
