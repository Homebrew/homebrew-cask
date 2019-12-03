cask 'zotero' do
  version '5.0.79'
  sha256 '5af99e96486ac34fa604910bab10d58bdb6381ff59e2953ee8a94cb2b8f40378'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
