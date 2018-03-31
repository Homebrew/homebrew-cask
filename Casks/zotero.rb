cask 'zotero' do
  version '5.0.42'
  sha256 'c8e2c01e781a82d640dc45af92173bf430407a47b173641d89abd4a7bb484296'

  url "https://download.zotero.org/client/release/#{version}/Zotero-#{version}.dmg"
  appcast 'https://github.com/zotero/zotero/releases.atom',
          checkpoint: 'be7adf05dccfe994510381fd4508dc0c1c55e1c39d8ed1e5fd624e94fbef63d1'
  name 'Zotero'
  homepage 'https://www.zotero.org/'

  auto_updates true

  app 'Zotero.app'
end
